# 📘 Day 9 - Generative AI & LLMs

> **Date:** 18-Jul-2026

## 📌 Overview

Day 9 focused on **Generative AI** and **Large Language Models (LLMs)**, covering the theory behind Transformers and how modern chatbots understand and generate language, along with practical, beginner-to-intermediate hands-on concepts like prompt engineering, RAG, vector databases, LangChain basics, and AI agents.

Throughout this day, I learned how Transformer-based models process text using tokens and embeddings, practiced writing effective prompts using different prompting techniques, explored how Retrieval-Augmented Generation (RAG) combines a knowledge base with a language model, and built a small in-memory vector store to power a simple search-and-retrieve pipeline. I also learned the basics of LangChain-style prompt templates, how AI agents decide which tool to use, and the core principles of Responsible AI. I applied these concepts by building a lightweight **AI Chatbot / Prompt-Engineering Proof of Concept**.

---

## 🎯 Learning Objectives

- Understand the high-level architecture of Transformer models.
- Understand tokens and embeddings as the building blocks of LLM input.
- Learn and apply core prompt engineering techniques.
- Understand the concept of Retrieval-Augmented Generation (RAG).
- Learn what vector databases are and why they matter for LLM apps.
- Learn the basics of LangChain-style prompt templates and chains.
- Understand what AI agents are and how they choose tools/actions.
- Understand the core principles of Responsible AI.

---

# 📚 Topics Covered

## 🤖 Transformers Overview

- Why Transformers replaced older sequence models (RNNs/LSTMs)
- Self-attention (concept): how a model "attends" to relevant words
- Encoder vs Decoder roles (concept)

## 🔤 Tokens & Embeddings (Concept)

- What tokenization is and why text is split into tokens
- Turning tokens into numeric vectors (embeddings)
- Measuring similarity between embeddings (cosine similarity)

## ✍️ Prompt Engineering Techniques

- Zero-shot prompting
- Few-shot prompting
- Chain-of-thought prompting
- Role/system prompting
- Prompt templates

## 📖 RAG Concept (Retrieval-Augmented Generation)

- Why RAG helps reduce hallucination and adds up-to-date knowledge
- Retrieval step vs Generation step
- Building a mini knowledge base and retrieving relevant context

## 🗂️ Vector Databases Overview

- What a vector database stores and why
- Similarity search (cosine similarity, nearest neighbours)
- Building a simple in-memory vector store

## 🔗 LangChain Basics

- Prompt templates (concept + simple implementation)
- Chains: combining prompts, retrieval, and output steps
- Where LangChain fits in an LLM application

## 🕵️ AI Agents Overview

- What an AI agent is (LLM + tools + decision loop)
- Tool selection based on the user's request
- A simple rule-based agent demo (calculator tool vs knowledge-base tool)

## 🛡️ Responsible AI

- Bias and fairness
- Transparency and explainability
- Privacy and data protection
- Safety guardrails and content moderation

---

# 💻 Implementations

The repository includes beginner-to-intermediate implementations of:

- A simple tokenizer and word-frequency demo
- Embedding vectors using TF-IDF, with cosine similarity comparisons
- Prompt engineering templates (zero-shot, few-shot, chain-of-thought, role-based)
- A mini RAG pipeline: mock knowledge base → retrieval → templated answer generation
- A simple in-memory vector store with similarity search
- A lightweight LangChain-style `PromptTemplate` and `Chain` implementation
- A simple rule-based AI agent that picks between a calculator tool and a knowledge-base tool
- A basic Responsible AI content-moderation keyword filter
- **AI Chatbot / Prompt-Engineering Proof of Concept** combining prompt templates + RAG retrieval into a simple chat loop

---

# 📝 Assignment

Completed a **Generative AI & LLMs Assignment** covering:

- Explaining tokens, embeddings, and Transformer attention in your own words
- Writing zero-shot, few-shot, and chain-of-thought prompts for a sample task
- Building a mini knowledge base and retrieving the most relevant document for a query
- Implementing a simple vector similarity search
- Designing a rule-based agent that selects the right tool for a request
- Listing Responsible AI considerations relevant to the chatbot PoC

---

# 📚 Key Learnings

- Understood how Transformer models use self-attention to process language.
- Learned how text is broken into tokens and converted into embeddings.
- Practiced multiple prompt engineering techniques and when to use each.
- Understood how RAG combines retrieval with generation to ground LLM answers.
- Learned the role of vector databases in storing and searching embeddings.
- Got hands-on with LangChain-style prompt templates and chains.
- Understood how AI agents decide which tool or action to take.
- Learned the core principles of Responsible AI for building safe LLM applications.
- Built a working AI Chatbot / Prompt-Engineering Proof of Concept.

---

# 📌 Deliverables

- ✅ Detailed Generative AI & LLM Concept Notes
- ✅ Prompt Engineering Templates & Examples
- ✅ Mini RAG Pipeline Implementation
- ✅ In-Memory Vector Store with Similarity Search
- ✅ AI Chatbot / Prompt-Engineering Proof of Concept
- ✅ Responsible AI Checklist
- ✅ Documentation
- ✅ GitHub Repository Update

---

# 🛠️ Technologies Used

- Python 3
- NumPy
- Pandas
- Scikit-learn (TF-IDF, cosine similarity)
- Matplotlib
- LangChain (concept)
- VS Code
- Git
- GitHub

---

---

# 🎯 Outcome

By the end of Day 9, I developed a solid, beginner-to-intermediate understanding of **Generative AI and LLMs**, including Transformers, tokens and embeddings, prompt engineering, RAG, vector databases, LangChain basics, AI agents, and Responsible AI. I applied these concepts practically by building a small AI Chatbot / Prompt-Engineering Proof of Concept that retrieves relevant context from a knowledge base and generates templated responses. These skills form the foundation for building more advanced LLM-powered applications.

---
