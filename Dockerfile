# Use the official Python image as a parent image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the main.py file and test files to the container
COPY main.py .
COPY app.py .
COPY checkbox.html .
COPY checkbox.robot .
COPY classA.py .
COPY dropdown.html .
COPY dropdown.robot .
COPY environment.yml .
COPY first_case.bat .
COPY FirstTestCase.robot .
COPY func.py .
COPY google_translate.robot .
COPY keywordstyle.robot .
COPY radiobutton.html .
COPY RadioButton.robot .
COPY readme.md .
COPY selenium-screenshot-2.png .
COPY setupandteardown.robot .
COPY StandardLibraryTest.robot .
COPY success.html .
COPY test_string.py .
COPY Textbox.robot .
COPY variables.robot .
COPY poetry.lock .
COPY pyproject.toml .
COPY requirements.txt .
COPY .replit .

# Install pytest and any other dependencies
RUN pip install robotframework

# Specify the command to run on container start
CMD ["robot -T FirstTestCase.robot"]