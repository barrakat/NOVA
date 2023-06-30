<div align="center">
<h1 align="center">
<br>
Report
<a href="https://www.deltager.no/event/deep_learning_for_forest_remote_sensing_applications_with_examples_in_python_22052023#init">NOVA Course</a> 
</h1>
<img src="https://github.com/barrakat/NOVA/blob/main/Data/Capture.PNG" width="300" />

</div> 

---

## 📒 Project Structure
[📍 Overview](#-overview)
[🧪 Running Tests](#-running-tests)
[💻 Results](#-results)
[🤝 Contributing](#-contributing)
[👏 Acknowledgments](#-acknowledgments)

---


## 📍 Overview

In this project I compare the performance of a tree seedling detector in Norway by using my own labelled instances (N 530, red quadrants in the Figure below) from 82 tiled orthomosaics of 10 m size VS the full instances labelled by the whole class group (N 5074, blue quadrants in the Figure below) from 3065 tiled orthomosaics of the same size.

<img src="https://github.com/barrakat/NOVA/blob/main/Figures/Capture_4.png" width="900" />

I trained on 2 models per instance group, as explained in Running Tests section below, and discuss the obtained result in the Results section below.

---

## 🧪 Running tests

| Model                | Description                                                                                                                                                    |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **⚙️ Architecture**    | The codebase follows a modular architecture, with different files and modules responsible for specific tasks. The use of factories, wrappers, and handlers promotes code organization and separation of concerns. |
| **📖 Documentation**   | The codebase is well-documented, with detailed explanations of each file's purpose and functionality. The provided summaries are informative and help understand the codebase.                                        |
| **🔗 Dependencies**    | The code relies on external libraries such as pandas and requests for data manipulation and HTTP requests. It uses Git, Python, conda, and additional tools like Tree and SnakeViz for development processes.                                                               |
| **🧩 Modularity**      | The codebase demonstrates modularity by separating functionalities into different modules and classes. Each module focuses on one aspect of the project, which makes the codebase more maintainable and reusable.                     |
| **✔️ Testing**         | The codebase has a testing strategy, as evidenced by the presence of a test script. It uses the pytest framework for generating a test coverage report and the SnakeViz tool for analyzing the profiled output.                             |
| **⚡️ Performance**     | The overall performance of the codebase appears to be efficient. The code utilizes Pandas for data manipulation, performance profiling, and optimization techniques to ensure good performance.                          |
| **🔐 Security**        | The codebase does not directly handle security-related functionality. However, it generates an OpenAI API key, and handling it securely is important to protect access to the AI model.                                    |
| **🔀 Version Control** | The code repository uses Git for version control. It provides a version history, facilitates collaboration, and allows for easy branching and merging of code changes.                                                        |
| **🔌 Integrations**    | The codebase integrates with external services and tools such as the OpenAI API, Git repositories, and Docker containers. These integrations enhance the functionality and flexibility of the application.                       |
| **📶 Scalability**     | The codebase does not explicitly address scalability. However, by using modular design and external services, the application can potentially handle growth and can be extended to support additional features in the future.   |

---

## 🧩 Modules

<details closed><summary>Root</summary>

| File                                                                   | Summary                                                                                                                                                                                                            |
| ---                                                                    | ---                                                                                                                                                                                                                |
| [Dockerfile](https://github.com/eli64s/readme-ai/blob/main/Dockerfile) | This Dockerfile sets up a Python environment in a container by installing Git and Python dependencies, copying project files, and running a main.py file as the entry point command.                               |
| [Makefile](https://github.com/eli64s/readme-ai/blob/main/Makefile)     | This makefile provides commands to facilitate code formatting, cleaning, creating conda and virtual environments, profiling code using cProfile, and analyzing the profiled output using SnakeViz.                 |
| [setup.py](https://github.com/eli64s/readme-ai/blob/main/setup.py)     | The provided code is a setup script for the README-AI package. It defines the required packages, author information, project details, and dependencies. It also specifies keywords, classifiers, and project URLs. |

</details>

<details closed><summary>Setup</summary>

| File                                                                     | Summary                                                                                                                                                                                                                                               |
| ---                                                                      | ---                                                                                                                                                                                                                                                   |
| [setup.sh](https://github.com/eli64s/readme-ai/blob/main/setup/setup.sh) | This code snippet checks if a conda environment exists, installs the "tree" command if it's not installed, ensures the presence of Git and Python 3.7+, creates a conda environment named "readme_ai" with Python 3.8 and installs required packages. |

</details>

<details closed><summary>Scripts</summary>

| File                                                                               | Summary                                                                                                                                                                                                                                                                                                                 |
| ---                                                                                | ---                                                                                                                                                                                                                                                                                                                     |
| [run_batch.sh](https://github.com/eli64s/readme-ai/blob/main/scripts/run_batch.sh) | The code snippet is a Bash script that loops through a list of GitHub repository URLs and runs a Python script called "main.py" for each repository. The Python script takes the repository URL as input and generates a markdown file named "readme-[repository_name].md" as output.                                   |
| [run.sh](https://github.com/eli64s/readme-ai/blob/main/scripts/run.sh)             | This code snippet is a Bash script that activates a conda environment named "readme_ai" and runs a Python script called "main.py". The script sets the options to exit on error and fail on pipe failures at the beginning. It also exports environment variables, if needed, and requires an OpenAI API key to be set. |
| [clean.sh](https://github.com/eli64s/readme-ai/blob/main/scripts/clean.sh)         | This code snippet is a Bash script that removes unwanted files and directories commonly found in a Python project. It deletes backup files, Python cache files, cache directories, VS Code settings, build artifacts, pytest cache, benchmark files, and specific files like logs and raw data.                         |
| [test.sh](https://github.com/eli64s/readme-ai/blob/main/scripts/test.sh)           | The provided code snippet activates a Conda environment named readme_ai. It generates a coverage report using pytest, excluding specified directories and files. It sets a minimum coverage threshold of 90%. After generating the report, it removes unnecessary files and folders.                                    |

</details>

<details closed><summary>Src</summary>

| File                                                                             | Summary                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| ---                                                                              | ---                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| [preprocess.py](https://github.com/eli64s/readme-ai/blob/main/src/preprocess.py) | The provided code snippet is a module for preprocessing a codebase. It includes classes for wrapping the repository parser, analyzing local or remote git repositories, generating file information, tokenizing content, mapping file extensions to programming languages, and extracting dependency file contents. The code handles various file formats and uses pandas for data manipulation.                                                                                                                                                                                               |
| [conf.py](https://github.com/eli64s/readme-ai/blob/main/src/conf.py)             | The code snippet defines multiple data classes that store configuration constants for README-AI. It includes classes for API configuration, Git repository configuration, Markdown configuration, paths to configuration files, prompts configuration, and the main application configuration. Additionally, there is a helper class that loads and stores additional configuration settings from TOML files. Overall, the code organizes and manages configuration constants necessary for README-AI.                                                                                         |
| [logger.py](https://github.com/eli64s/readme-ai/blob/main/src/logger.py)         | The provided code snippet defines a custom logger class that wraps the functionality of the logging module. It supports multiple log levels, such as info, debug, warning, error, and critical, and uses a colored formatter for log messages. The class ensures that only one instance of the logger is created and allows logging to be configured with different log levels.                                                                                                                                                                                                                |
| [factory.py](https://github.com/eli64s/readme-ai/blob/main/src/factory.py)       | This code snippet provides a factory class that handles file input/output operations. It supports reading and writing different file types such as Markdown, TOML, JSON, and YAML. It offers methods to read and write files, and it also handles caching to improve performance. It raises specific exceptions when there are errors in file operations.                                                                                                                                                                                                                                      |
| [model.py](https://github.com/eli64s/readme-ai/blob/main/src/model.py)           | The provided code snippet is a handler for making requests to the OpenAI API to generate text for the README.md file. It includes functionality for converting code to natural language text and generating text using prompts. The code also handles rate limiting, caching, and error handling.                                                                                                                                                                                                                                                                                              |
| [builder.py](https://github.com/eli64s/readme-ai/blob/main/src/builder.py)       | The code snippet builds a README Markdown file for a codebase. It creates different sections including badges, directory tree, modules, setup guide, and more. It uses information from the configuration file and generates Markdown tables from code summaries. It also retrieves and formats badges for project dependencies.                                                                                                                                                                                                                                                               |
| [utils.py](https://github.com/eli64s/readme-ai/blob/main/src/utils.py)           | This code snippet provides utility methods for the README-AI tool. It includes functions for cloning and validating Git repositories, extracting username and repository name from GitHub URLs, adjusting maximum tokens for prompts, token counting, text truncation, file/url validation, list flattening, and text formatting.                                                                                                                                                                                                                                                              |
| [parse.py](https://github.com/eli64s/readme-ai/blob/main/src/parse.py)           | The provided code snippet consists of a collection of methods that parse different file formats to extract dependencies. This includes files such as docker-compose.yaml, conda environment files, Pipfile, Pipfile.lock, pyproject.toml, requirements.txt, Cargo.toml, Cargo.lock, package.json, yarn.lock, package-lock.json, go.mod, build.gradle, pom.xml, CMakeLists.txt, configure.ac, and Makefile.am. The methods take the content of the files as input and return a list of dependencies extracted from the files. Each method handles the parsing logic for a specific file format. |
| [main.py](https://github.com/eli64s/readme-ai/blob/main/src/main.py)             | This code snippet is the main entrypoint for the README-AI application. It takes command line arguments for the OpenAI API key, output file path, and repository URL or path. It validates the API key and repository, then it generates a README.md file by orchestrating the generation process using an OpenAI model. The generated README contains a code summary, slogan, overview, and features. Finally, it formats the text and builds the markdown file.                                                                                                                              |

</details>

---

## 🚀 Getting Started

### ✔️ Prerequisites

Before you begin, ensure that you have the following prerequisites installed:
> - `ℹ️ Requirement 1`
> - `ℹ️ Requirement 2`
> - `ℹ️ ...`

### 💻 Installation

1. Clone the readme-ai repository:
```sh
git clone https://github.com/eli64s/readme-ai
```

2. Change to the project directory:
```sh
cd readme-ai
```

3. Install the dependencies:
```sh
pip install -r requirements.txt
```

### 🎮 Using readme-ai

```sh
python main.py
```

### 🧪 Running Tests
```sh
pytest
```

---


## 🗺 Roadmap

> - [X] `ℹ️  Task 1: Implement X`
> - [ ] `ℹ️  Task 2: Refactor Y`
> - [ ] `ℹ️ ...`


---

## 🤝 Contributing

Contributions are always welcome! Please follow these steps:
1. Fork the project repository. This creates a copy of the project on your account that you can modify without affecting the original project.
2. Clone the forked repository to your local machine using a Git client like Git or GitHub Desktop.
3. Create a new branch with a descriptive name (e.g., `new-feature-branch` or `bugfix-issue-123`).
```sh
git checkout -b new-feature-branch
```
4. Make changes to the project's codebase.
5. Commit your changes to your local branch with a clear commit message that explains the changes you've made.
```sh
git commit -m 'Implemented new feature.'
```
6. Push your changes to your forked repository on GitHub using the following command
```sh
git push origin new-feature-branch
```
7. Create a new pull request to the original project repository. In the pull request, describe the changes you've made and why they're necessary.
The project maintainers will review your changes and provide feedback or merge them into the main branch.

---

## 📄 License

This project is licensed under the `ℹ️  INSERT-LICENSE-TYPE` License. See the [LICENSE](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository) file for additional info.

---

## 👏 Acknowledgments

> - `ℹ️  List any resources, contributors, inspiration, etc.`

---
