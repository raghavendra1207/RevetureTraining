def dfs(node, parent, depth, subtree_sum):
    subtree_sum[node] = 1
    for child in tree[node]:
        if child != parent:
            dfs(child, node, depth + 1, subtree_sum)

def find_lca(a, b):
    while depth[a] > depth[b]:
        a = parent[a]
    while depth[b] > depth[a]:
        b = parent[b]
    while a != b:
        a = parent[a]
        b = parent[b]
    return a

N = 3
A = 1
B = 2
P = [0, 1, 1]

tree = [[] for _ in range(N + 1)]
parent = [0] * (N + 1)
depth = [0] * (N + 1)
subtree_sum = [0] * (N + 1)

for i in range(2, N + 1):
    tree[P[i - 1]].append(i)
    parent[i] = P[i - 1]
    depth[i] = depth[P[i - 1]] + 1

dfs(1, 0, 0, subtree_sum)
lca = find_lca(A, B)
sum_beauty = subtree_sum[A] + subtree_sum[B] - 2 * subtree_sum[lca]

print("Sum of beauty for nodes from node 1:", sum_beauty)
