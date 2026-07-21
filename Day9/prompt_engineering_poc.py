import numpy as np
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.metrics.pairwise import cosine_similarity

KNOWLEDGE_BASE = [
    "Transformers are neural network architectures that use self-attention to model relationships between tokens in a sequence.",
    "Tokens are the basic units processed by a language model, and embeddings are dense vectors that represent their meaning.",
    "Prompt engineering is the practice of designing inputs that guide a model to produce useful and accurate responses.",
    "Retrieval-Augmented Generation, or RAG, combines a language model with external documents retrieved from a knowledge store.",
    "Vector databases store embeddings so similar content can be retrieved efficiently for RAG systems.",
    "LangChain is a framework that helps build LLM applications with prompts, chains, memory, and tools.",
    "Responsible AI emphasizes fairness, transparency, privacy, human oversight, and safety in AI systems."
]


def build_prompt(question, context):
    return f"""You are a helpful AI study assistant.
Use the context below to answer the user's question.
If the context is not relevant, say that you are not sure.

Context:
{context}

User question:
{question}

Answer in 2 to 4 short sentences:
"""


def retrieve_context(question, documents, top_k=3):
    vectorizer = TfidfVectorizer()
    document_matrix = vectorizer.fit_transform(documents + [question])
    similarities = cosine_similarity(document_matrix[-1], document_matrix[:-1]).flatten()
    top_indices = np.argsort(similarities)[-top_k:][::-1]
    selected = [documents[idx] for idx in top_indices]
    return "\n".join(selected)


def generate_answer(question):
    context = retrieve_context(question, KNOWLEDGE_BASE)
    prompt = build_prompt(question, context)
    return prompt


if __name__ == "__main__":
    print("Simple AI Prompt-Engineering PoC")
    print("Type 'exit' to quit.\n")

    while True:
        user_input = input("You: ").strip()
        if user_input.lower() in {"exit", "quit"}:
            break

        if not user_input:
            continue

        answer = generate_answer(user_input)
        print("\nAssistant Prompt:\n")
        print(answer)
        print("\n")
