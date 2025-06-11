# AI Blog generator Web & App

A fully automated web application that leverages AI to analyze trends, generate complete blog posts with images, and schedule them for publishing. This project integrates Supabase for the backend, LangChain for AI orchestration, and a custom image generation model to streamline the entire content creation workflow.

## ✨ Features

  - **Seamless Authentication**: Easy and secure user login with social providers (Google, GitHub, etc.) powered by Supabase Auth.
  - **Automated Trend Analysis**: Kicks off the content creation process by analyzing current web trends for any given topic using an LLM agent with web search capabilities.
  - **AI-Powered Content Generation**: Utilizes LangChain to orchestrate LLMs for drafting high-quality, relevant, and structured blog articles based on the trend analysis.
  - **AI Image Generation**: Analyzes the generated text to create context-aware prompts and produces unique images for the blog post using the Flux image generation model.
  - **Supabase Integration**: Built on a robust backend using Supabase for database, authentication, storage, and serverless edge functions.

## ⚙️ How It Works: The AI Pipeline

The core of this application is an automated pipeline orchestrated by LangChain.

1.  **Input & Trend Analysis**: The user provides a topic or a keyword. The system uses a LangChain agent equipped with web search tools to find trending articles, discussions, and key talking points related to the topic.

2.  **Content Structuring & Generation**: The gathered insights are passed to a sequential LangChain chain.

      - **Chain 1 (Outline Generation)**: An LLM analyzes the trend data and creates a structured outline for the blog post (e.g., Introduction, Section 1, Section 2, Conclusion).
      - **Chain 2 (Article Writing)**: A second LLM takes the outline and writes a full-length, coherent article, ensuring a logical flow and engaging tone.

3.  **Image Prompting & Generation**: The final text is processed by another LLM to extract key visual themes. These themes are converted into descriptive prompts, which are then sent to the **Flux API** to generate relevant images.

4.  **Drafting & Scheduling**: The complete article (text + image URLs) is saved as a `draft` in the Supabase PostgreSQL database. The user can view this on their dashboard.

5.  **Automated Publishing**: When the scheduled time arrives, a Supabase Cron Job (or a similar scheduler) triggers a serverless function that changes the post's status from `draft` to `published`, making it live.

## 🚀 Tech Stack

  - **Frontend**: Flutter
  - **Backend & Database**: [**Supabase**](https://supabase.io/)
      - PostgreSQL Database
      - Social Authentication
      - Object Storage (for images)
      - Edge Functions (for scheduled publishing)
  - **AI Orchestration**: [**LangChain**](https://www.langchain.com/)
  - **Language Models (LLM)**: Compatible with OpenAI or Gemini.
  - **Image Generation**: **Flux**
  - **Deployment**: AWS Amplify.
