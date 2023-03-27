import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from scipy.stats import ttest_ind
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

# Read in the data
data = pd.read_csv("gene_expression_data.csv")

# Extract only the columns of interest and filter for significant genes
filtered_data = data[['gene_id', 'treatment', 'log2fold_change', 'p_value']].query('p_value < 0.05')

# Pivot the data so that each gene has its own column
pivoted_data = filtered_data.pivot(index='treatment', columns='gene_id', values='log2fold_change')

# Perform a principal component analysis (PCA) on the pivoted data
scaler = StandardScaler()
scaled_data = scaler.fit_transform(pivoted_data)
pca = PCA(n_components=2)
pca_results = pca.fit_transform(scaled_data)

# Plot the first two principal components
fig, ax = plt.subplots(figsize=(8, 6))
colors = ['blue', 'red']
for color, i, target_name in zip(colors, [0, 1], pivoted_data.index):
    ax.scatter(pca_results[i == pivoted_data.index, 0],
               pca_results[i == pivoted_data.index, 1],
               c=color, label=target_name)
ax.legend()
ax.set_title("Principal component analysis of differential gene expression")
ax.set_xlabel("Principal component 1")
ax.set_ylabel("Principal component 2")
plt.tight_layout()

# Save the plot to a file
plt.savefig("differential_gene_expression_pca.png", dpi=300)

# Perform a t-test on the log2fold_change values for each gene
for gene_id, values in pivoted_data.items():
    t_stat, p_value = ttest_ind(values[0], values[1])
    print(f"Gene {gene_id}: t-statistic = {t_stat:.3f}, p-value = {p_value:.3f}")

