# import necessary libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# read in data
df = pd.read_csv('data.csv')

# explore data
print(df.head())
print(df.info())
print(df.describe())

# plot distribution of a numerical column
plt.hist(df['column_name'])
plt.show()

# plot relationship between two numerical columns
plt.scatter(df['column_1'], df['column_2'])
plt.xlabel('Column 1')
plt.ylabel('Column 2')
plt.show()

# group data by a categorical column and plot the mean of a numerical column
grouped = df.groupby('categorical_column')
mean_vals = grouped['numerical_column'].mean()
mean_vals.plot.bar()

# create a new feature
df['new_feature'] = df['column_1'] * df['column_2']

# split data into training and test sets
from sklearn.model_selection import train_test_split
X = df.drop(columns=['target_column'])
y = df['target_column']
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# train a model
from sklearn.ensemble import RandomForestClassifier
model = RandomForestClassifier()
model.fit(X_train, y_train)

# evaluate model on test set
from sklearn.metrics import accuracy_score
y_pred = model.predict(X_test)
accuracy = accuracy_score(y_test, y_pred)
print(f'Test set accuracy: {accuracy:.2f}')

