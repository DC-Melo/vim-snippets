find BFS                   \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_BFS.snippets
find Binary_Search         \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Binary_Search.snippets
find Bit_Manipulation      \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Bit_Manipulation.snippets
find Deque                 \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Deque.snippets
find Design                \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Design.snippets
find DFS                   \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_DFS.snippets
find Divide_Conquer        \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Divide_Conquer.snippets
find Dynamic_Programming   \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Dynamic_Programming.snippets
find Graph                 \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Graph.snippets
find Greedy                \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Greedy.snippets
find Hash                  \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Hash.snippets
find Heap                  \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Heap.snippets
find LCCUP                 \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_LCCUP.snippets
find Linked_List           \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Linked_List.snippets
find Math                  \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Math.snippets
find Others                \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Others.snippets
find Priority_Queue        \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Priority_Queue.snippets
find Readme.md             \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Readme.md.snippets
find Recursion             \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Recursion.snippets
find Segment_Tree          \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Segment_Tree.snippets
find Simulation            \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Simulation.snippets
find Stack                 \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Stack.snippets
find String                \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_String.snippets
find Template              \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Template.snippets
find tests                 \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_tests.snippets
find Tree                  \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Tree.snippets
find Trie                  \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Trie.snippets
find Two_Pointers          \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Two_Pointers.snippets
find Union_Find            \(  -iname "*.cpp" -o -iname "*.md" \)  -print0 | sort -z | xargs -r0 more >              cpp_Union_Find.snippets
vimcommand
# 换行确保以:开头
%s/::::::::::::::\n.*\n::::::::::::::/\r\r\0/g
# 取消结构的备注
%s/^ \* //g
# 添加snippet头
%s#::::::::::::::\n.*/\d\+\.\(.*\)/.*\n::::::::::::::#\0\rsnippet \1 "\1" b#gc
# 添加尾巴
%s#::::::::::::::\n.*/\d\+\.\(.*\)/.*\n::::::::::::::#\$0\rendsnippet\r\0#gc

::::::::::::::
Tree/094.Binary-Tree-Inorder-Traversal/094.Binary Tree Inorder Traversal.cpp
::::::::::::::
snippet Binary-Tree-Inorder-Traversal "Binary-Tree-Inorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) 
    {
        vector<int>results;
        stack<TreeNode*>Stack;
        
        while (root!=NULL || !Stack.empty())
        {
            if (root!=NULL)
            {
                Stack.push(root);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                results.push_back(root->val);
                Stack.pop();
                root=root->right;
            }
        }
        
        return results;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/094.Binary-Tree-Inorder-Traversal/94.Binary Tree Inorder Traversal.cpp
::::::::::::::
snippet Binary-Tree-Inorder-Traversal "Binary-Tree-Inorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) 
    {
        stack<TreeNode*>Stack;
        vector<int>results;
        
        while (root!=NULL || !Stack.empty())
        {
            if (root!=NULL)
            {
                Stack.push(root);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                Stack.pop();
                results.push_back(root->val);
                root=root->right;
            }
        }
        
        return results;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/094.Binary-Tree-Inorder-Traversal/Readme.md
::::::::::::::
snippet Binary-Tree-Inorder-Traversal "Binary-Tree-Inorder-Traversal" b
### 094.Binary-Tree-Inorder-Traversal

此题的代码几乎和 144. Binary Tree Preorder Traversal 完全一致。唯一的区别就是记录元素的时机。先序遍历（preorder）是首先记录根节点，所以在入栈的时候就需要读数（读完根节点，再递归左子树）。而中序遍历（inorder）是先记录左子树，所以需要先一路入栈到最底层，在退栈的时候再开始依次读数。
```cpp
        while (root!=NULL || !Stack.empty())
        {
            if (root!=NULL)
            {
                results.push_back(root->val); // 中序遍历在此读数
                Stack.push(root);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                results.push_back(root->val); // 先序遍历在此读数
                Stack.pop();
                root=root->right;
            }
        }
```        


[Leetcode Link](https://leetcode.com/problems/binary-tree-inorder-traversal)

$0
endsnippet
::::::::::::::
Tree/095.Unique-Binary-Search-Trees-II/095.Unique Binary Search Trees II.cpp
::::::::::::::
snippet Unique-Binary-Search-Trees-II "Unique-Binary-Search-Trees-II" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<TreeNode*> generateTrees(int n) 
    {
        if (n == 0) return {};
        return generateTreesDFS(1,n);
    }
    
    vector<TreeNode*> generateTreesDFS(int start, int end) 
    {
         vector<TreeNode*> subTree;
         
         if (start>end)
         {
             subTree.push_back(NULL);
         }
         else
         {
             for (int i=start; i<=end; i++)
             {
                vector<TreeNode*> leftSubTree = generateTreesDFS(start, i - 1);
                vector<TreeNode*> rightSubTree = generateTreesDFS(i + 1, end);
             
            
                for (int j = 0; j < leftSubTree.size(); ++j) 
                    for (int k = 0; k < rightSubTree.size(); ++k) 
                    {
                        TreeNode *node = new TreeNode(i);
                        node->left = (leftSubTree)[j];
                        node->right = (rightSubTree)[k];
                        subTree.push_back(node);
                    }
            }             
         }
         
         return subTree;
    }

};


$0
endsnippet
::::::::::::::
Tree/095.Unique-Binary-Search-Trees-II/Readme.md
::::::::::::::
snippet Unique-Binary-Search-Trees-II "Unique-Binary-Search-Trees-II" b
### 095.Unique-Binary-Search-Trees-II

这道题如何构造DFS函数很有讲究。函数的参数应该是start和end，输出应该是一系列由start到end元素构成的BST。注意这样的BST不止一个，除了根节点可以在start~end之间任意选择外，左子树和右子树在下一轮递归中也会有很多解。所以在当前的返回值应该要穷举出所有这样的BST。

考虑这样构造DFS函数
```cpp
vector<TreeNode*> generateTreesDFS(int start, int end)
```
遍历每个可能的root(从start到end)，然后确定了左子树、右子树包含的元素。递归调用DFS分别生成一系列左子树和右子树。

重点来了！然后对每一个根节点，需要所有的左子树、右子树都两两配对，构成一个完整的树。所以对每一个左右子树组合，都要不断实例化这个根节点，然后加入到结果数组中。
```cpp
             for (int i=start; i<=end; i++)
             {
                vector<TreeNode*> leftSubTree = generateTreesDFS(start, i - 1);
                vector<TreeNode*> rightSubTree = generateTreesDFS(i + 1, end);             
            
                for (int j = 0; j < leftSubTree.size(); ++j) 
                    for (int k = 0; k < rightSubTree.size(); ++k) 
                    {
                        TreeNode *node = new TreeNode(i);
                        node->left = leftSubTree[j];
                        node->right = rightSubTree[k];
                        subTree.push_back(node);
                    }
            }             
```
另外需要注意的细节：
如果start>end，需要返回的是一个包含NULL的```vector<TreeNode*>```，而不是空数组。否则之后的二重循环就可能无法展开。


[Leetcode Link](https://leetcode.com/problems/unique-binary-search-trees-ii)


$0
endsnippet
::::::::::::::
Tree/098.Validate-Binary-Search-Tree/098.Validate Binary Search Tree.cpp
::::::::::::::
snippet Validate-Binary-Search-Tree "Validate-Binary-Search-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    vector<int>q;
public:
    bool isValidBST(TreeNode* root) 
    {
        if (root==NULL) return true;

        if (isValidBST(root->left)==false) 
            return false;

        q.push_back(root->val);
        if (q.size()>1 && q.back()<=q[q.size()-2])
            return false;

        if (isValidBST(root->right)==false) 
            return false;

        return true;
    }
};


$0
endsnippet
::::::::::::::
Tree/098.Validate-Binary-Search-Tree/098.Validate-Binary-Search-Tree_s2.cpp
::::::::::::::
snippet Validate-Binary-Search-Tree "Validate-Binary-Search-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    bool isValidBST(TreeNode* root) 
    {
        if (root==NULL) return true;
        
        TreeNode* node;
        
        if (root->left!=NULL)
        {
            node=root->left;
            while (node->right!=NULL)
                node=node->right;
            if (node->val>=root->val)
                return false;
        }
        
        if (root->right!=NULL)
        {
            node=root->right;
            while (node->left!=NULL)
                node=node->left;
            if (node->val<=root->val)
                return false;
        }        
        
        return isValidBST(root->left)&&isValidBST(root->right);
    }
};


$0
endsnippet
::::::::::::::
Tree/098.Validate-Binary-Search-Tree/Readme.md
::::::::::::::
snippet Validate-Binary-Search-Tree "Validate-Binary-Search-Tree" b
### 98. Validate Binary Search Tree

#### 方法1
BST的性质就是进行先序遍历的话，必然是第一个递增序列。

用DFS的方法，递归进行先序遍历。将读取的数值存入一个数组。当发现数组不满足升序时返回false

#### 方法2
满足BST的三个条件：
1. 左子树的最大值小于根节点，且右子树的最小值大于根节点
2. 左子树也是BST
3. 右子树也是BST

在判断第一个条件时，可以根据这个性质：左子树的最大值应该就是左子树最右下角的节点；右子树的最小值应该就是右子树最左下角的节点。

因此很容易写出递归判断的表达式。


[Leetcode Link](https://leetcode.com/problems/validate-binary-search-tree)

$0
endsnippet
::::::::::::::
Tree/099.Recover-Binary-Search-Tree/099.Recover-Binary-Search-Tree.cpp
::::::::::::::
snippet Recover-Binary-Search-Tree "Recover-Binary-Search-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    TreeNode* CurMax = new TreeNode(INT_MIN);
    TreeNode* first = NULL;
    TreeNode* second = NULL;

public:
    void recoverTree(TreeNode* root) 
    {
       DFS(root);
       
       int temp = first->val;
       first->val = second->val;
       second->val = temp;
    }
    
    void DFS(TreeNode* node)
    {
        if (node==NULL) return;
        
        DFS(node->left);
        
        if (node->val >= CurMax->val)
            CurMax = node;
        else
        {
            if (first==NULL) 
            {
                first=CurMax;
                second=node;
                CurMax=node;
            }
            else
                second=node;
        }
        
        DFS(node->right);
            
    }
    
};


$0
endsnippet
::::::::::::::
Tree/099.Recover-Binary-Search-Tree/Readme.md
::::::::::::::
snippet Recover-Binary-Search-Tree "Recover-Binary-Search-Tree" b
### 099.Recover-Binary-Search-Tree

因为是BST，所以按先序遍历访问下来应该是一个递增的数列。如果一个递增的数列里出现两个数字的对调，那么会有两个尖峰。显然，第一个尖峰的顶和第二个尖峰的谷，就是被掉包的那两个数字。

本题按先序遍历访问BST（采用DFS递归的方法）。初始化三个公共变量
```cpp
TreeNode* first=NULL;
TreeNode* Second=NULL;
TreeNode* CurMax=new TreeNode(INT_MIN);
```
在遍历过程中，CurMax永远存储的是上一次访问的节点，理论上是一个不断增大的值。

如果第一次出现当前访问的节点 node->val < CurMax->val，说明遇到了第一个尖峰，那么根据之前的分析，first=CurMax 即为第一个掉包元素。怎么判断这是第一个尖峰呢？只需要看first==NULL就行。别忘了，这一回合后的CurMax应该设置为node。

如果第二次出现当前访问的节点 node->val < CurMax->val，说明遇到了第二个尖峰，那么根据之前的分析，second=node，即为第二个掉包元素。

这里还有一个关键点：如果整个树的两个掉包元素是相邻的，那么整个遍历只会找到一个尖峰。所以这里未雨绸缪的技巧是，在处理第一个尖峰时，同时把第二个掉包元素也设置 second==node. 后续如果找到了第二个尖峰，则second会被覆盖。


[Leetcode Link](https://leetcode.com/problems/recover-binary-search-tree)

$0
endsnippet
::::::::::::::
Tree/1028.Recover-a-Tree-From-Preorder-Traversal/1028.Recover-a-Tree-From-Preorder-Traversal.cpp
::::::::::::::
snippet Recover-a-Tree-From-Preorder-Traversal "Recover-a-Tree-From-Preorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    vector<pair<int,int>>nodes;
public:
    TreeNode* recoverFromPreorder(string S) 
    {        
        for (int i=0; i<S.size(); i++)
        {
            int j = i;
            while (j<S.size() && S[j]=='-')
                j++;
            int depth = j-i;
            i = j;
            while (j<S.size() && isdigit(S[j]))
                j++;
            int val = stoi(S.substr(i, j-i));
            nodes.push_back({val, max(0,depth)});
            i = j-1;
        }
        int num = 0;
        return DFS(0, num);
    }

    TreeNode* DFS(int cur, int& num)
    {
        TreeNode* root = new TreeNode(nodes[cur].first);
        int leftNum = 0, rightNum = 0;
        if (cur+1 < nodes.size() && nodes[cur+1].second == nodes[cur].second+1)
        {
            TreeNode* left = DFS(cur+1, leftNum);
            root->left = left;
        }        
        if (cur+leftNum+1 < nodes.size() && nodes[cur+leftNum+1].second == nodes[cur].second+1)
        {
            TreeNode* right = DFS(cur+leftNum+1, rightNum);
            root->right = right;
        }
        num = leftNum+rightNum+1;
        return root;
    }
};


$0
endsnippet
::::::::::::::
Tree/1028.Recover-a-Tree-From-Preorder-Traversal/Readme.md
::::::::::::::
snippet Recover-a-Tree-From-Preorder-Traversal "Recover-a-Tree-From-Preorder-Traversal" b
### 1028.Recover-a-Tree-From-Preorder-Traversal

我们知道，用树的先序遍历可以唯一地重构出这棵树来。这在```297.Serialize and Deserialize Binary Tree```中曾经提到过。但在那道题里面，先序遍历的序列化需要包括所有的空节点。在本题所给出的先序遍历里，并没有指明空节点，但是提供了另一个信息：每个节点的深度。那我们可以利用这个条件来实现相似的重构。

首先我们先预处理一下字符串，使得其变成一个节点数组nodes，每个节点元素包含了value和depth两个信息。

我们设计递归函数DFS(cur)，表示构造以nodes[cur]为根的子树。先序遍历的最大特点是，任何子树序列的第一个元素cur一定是该子树的root。然后，通常情况下，第二个元素cur+1就是左子树的根。但是也有可能root的左节点是空，这样的话第二元素就不是左子树的根（因为空节点不会计入序列）。那么如何判断呢？就看它们的深度信息就可以了：
```cpp
TreeNode* root = new TreeNode(nodes[cur].value);
if (nodes[cur].depth+1 == nodes[cur+1].depth)
  root->left = DFS(cur+1);
```
那么如何知道root的右节点在什么位置呢？只要查看一下左子树有多大即可，假设是leftNum这么多：
```cpp
if (nodes[cur].depth+1 == nodes[cur+leftNum+1].depth)
  root->right = DFS(cur+leftNum+1);
```
怎么知道左子树的大小leftNum是多少呢？可以再把左子树扫一遍。不过这样的时间复杂度就是o(N^2)了。比较高效的算法就是在构造左子树的时候，顺便把左子树的大小给算出来。所以我们设计```TreeNode* DFS(int cur, int& num)```，其中num返回的是以cur为根的子树的大小。显然有
```
num = leftNum+rightNum+1;
```
其中leftNum和rightNum又都是继续递归的产物。

那么递归算法的边界条件是什么？其实不用特地写边界条件。当遍历到叶子节点的时候，两个if语句的条件就保证递归不下去了。


$0
endsnippet
::::::::::::::
Tree/105.Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal/105.Construct Binary Tree from Preorder and Inorder Traversal.cpp
::::::::::::::
snippet Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal "Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<int,int>Map;
public:
    TreeNode* buildTree(vector<int>& preorder, vector<int>& inorder) 
    {
        if (preorder.size()==0) return NULL;
        
        for (int i=0; i<inorder.size(); i++)
            Map[inorder[i]]=i;
        
        TreeNode* root = DFS(preorder,0,preorder.size()-1,inorder,0,inorder.size()-1);
        
        return root;
    }
    
    TreeNode* DFS(vector<int>& preorder, int a, int b, vector<int>& inorder, int m, int n)
    {
        if (a>b)
            return NULL;
        
        TreeNode* root = new TreeNode(preorder[a]);
        
        int pos = Map[preorder[a]];
        root->left = DFS(preorder,a+1,a+pos-m,inorder,m,pos-1);
        root->right = DFS(preorder,a+pos-m+1,b,inorder,pos+1,n);
        return root;
    }
};


$0
endsnippet
::::::::::::::
Tree/105.Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal/Readme.md
::::::::::::::
snippet Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal "Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal" b
### 105.Construct-Binary-Tree-from-Preorder-and-Inorder-Traversal

首先明确概念，先序遍历（perorder）是指第一个访问根节点；中序遍历（inorder）是指第二个访问根节点（第一个先访问左子树）。不要混淆了。

本题是经典的二叉树操作。考虑到preorder的第一个元素必定是root；所以在inorder中找到对应root的位置后，其左边就是左子树的所有节点的中序遍历，右边就是右子树的所有节点的中序遍历。

那么如何在preorder序列里面区别出哪些是左子树的节点，哪些是右子树的节点呢？通过inorder序列里左子树节点的数目！假设inorder序列里左子树节点的数目为N，那么在preorder序列里，root之后的N个元素就是左子树的先序遍历，剩下的元素就是右子树的先序遍历。

注意，需要提前根据inorder建立Hash表，这样从preorder里确定root后，就可以立即查找到其在inorder里的位置。

举个例子，DFS(vector<int>& preorder, int a, int b, vector<int>& inorder, int m, int n)，那么根节点在先序遍历中就一定是 preorder[a]，那么在中序遍历中的位置就一定是 pos = Map[preorder[a]]。所以inorder序列里, m到pos-1是左子树，pos+1到n是右子树。可知左子树的数目是N = pos-m。在preorder序列里，左子树从a+1开始，到a+N为止；显然，右子树从a+N+1开始，到b为止。


[Leetcode Link](https://leetcode.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal)

$0
endsnippet
::::::::::::::
Tree/106.Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal/106.Construct Binary Tree from Inorder and Postorder Traversal.cpp
::::::::::::::
snippet Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal "Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<int,int>Map;
public:
    TreeNode* buildTree(vector<int>& inorder, vector<int>& postorder) 
    {
        for (int i=0; i<inorder.size(); i++)
            Map[inorder[i]]=i;
        return DFS(inorder,0,inorder.size()-1,postorder,0,postorder.size()-1);
    }
    
    TreeNode* DFS(vector<int>& inorder, int a, int b, vector<int>& postorder, int m, int n)
    {
        if (a>b) return NULL;
        
        TreeNode* root=new TreeNode(postorder[n]);
        int pos=Map[postorder[n]];
        root->left = DFS(inorder,a,pos-1,postorder,m,m+pos-1-a);
        root->right = DFS(inorder,pos+1,b,postorder,m+pos-a,n-1);
        
        return root;
    }
};


$0
endsnippet
::::::::::::::
Tree/106.Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal/Readme.md
::::::::::::::
snippet Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal "Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal" b
### 106.Construct-Binary-Tree-from-Inorder-and-Postorder-Traversal

本题和 105. Construct Binary Tree from Preorder and Inorder Traversal 一样的思路。根据后续遍历的性质，postorder数组的最后一个元素就是根节点。在inorder数组里面通过之前构建的hash映射找到这个根节点，就可以将整个inorder数组分成左右两部分，分别构造左子树和右子树。

postorder数组的拆分方法：根据inorder数组拆分得到的左右子树的元素数目，来确定postorder序列里前面多少个元素属于左子树。


[Leetcode Link](https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal)

$0
endsnippet
::::::::::::::
Tree/1104.Path-In-Zigzag-Labelled-Binary-Tree/1104.Path-In-Zigzag-Labelled-Binary-Tree.cpp
::::::::::::::
snippet Path-In-Zigzag-Labelled-Binary-Tree "Path-In-Zigzag-Labelled-Binary-Tree" b
class Solution {
public:
    vector<int> pathInZigZagTree(int label) 
    {
        vector<int>results;
        while (label>0)
        {
            results.push_back(label);
            int n = log2(label);
            label = pow(2,n-1)+pow(2,n)-1-label/2;            
        }
        reverse(results.begin(),results.end());
        return results;
    }
};


$0
endsnippet
::::::::::::::
Tree/1104.Path-In-Zigzag-Labelled-Binary-Tree/Readme.md
::::::::::::::
snippet Path-In-Zigzag-Labelled-Binary-Tree "Path-In-Zigzag-Labelled-Binary-Tree" b
### 1104.Path-In-Zigzag-Labelled-Binary-Tree

本题的突破口是，如果是一棵按顺序横向排列的完全二叉树（即没有Zigzag），我们有这样的一个性质：任意label的节点，一路向上走到根节点的路径就是```label, label/2, label/2/2, label/2/2/2 ....````直至走到根节点0.

本题中，从label往上的过程中，每走一行，该行的节点编号种类其实不会变，但顺序/逆序会变化一下。举个例子，label是14，它位于第3层（以0-index计算）；那么第2层的节点编号一定是从4到7，或者从7到4. 不管是什么顺序，ZigZag会导致14的父节点一定不是7，而是7在该层的对称编号，即4. 

所以本题的算法是：最底层的初始节点是label，它的层级编号就是n = log2(label). 第n-1层的节点编号范围就是```pow(2, n-1)```到```pow(2, n) -1```。不管是否顺序逆序，label的父节点不是label/2，而是label/2在该行节点编号中的中轴对称位置。令p是label/2的对称位置，那么由对称性肯定有```label/2-pow(2,n-1) = pow(2,n)-1 - p```，即有```p = pow(2,n)-1 - label/2 + pow(2,n-1)```. 由此我们循环利用这个公式直至p的编号减至0.


$0
endsnippet
::::::::::::::
Tree/110.Balanced-Binary-Tree/110.Balanced Binary Tree.cpp
::::::::::::::
snippet Balanced-Binary-Tree "Balanced-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    bool isBalanced(TreeNode* root) 
    {
        if (depth(root)==-1)
            return false;
        else
            return true;
    }
    
    int depth(TreeNode* node)
    {
        if (node==NULL) return 0;
        
        int d1=depth(node->left);
        int d2=depth(node->right);
        if (d1==-1 || d2==-1 || abs(d1-d2)>1) 
            return -1;
        else
            return max(d1,d2)+1;
    }
};


$0
endsnippet
::::::::::::::
Tree/110.Balanced-Binary-Tree/Readme.md
::::::::::::::
snippet Balanced-Binary-Tree "Balanced-Binary-Tree" b
### 110.Balanced-Binary-Tree

将判断isBalanced(root)转为考察depth(root). 递归的过程中一旦发现depth(node->left)和depth(node->right)不合条件、或其中任何一个已经为-1，则depth(node)就直接返回-1。
```cpp
    int depth(TreeNode* node)
    {
        if (node==NULL) return 0;
        
        int d1=depth(node->left);
        int d2=depth(node->right);
        if (d1==-1 || d2==-1 || abs(d1-d2)>1) 
            return -1;
        else
            return max(d1,d2)+1;
    }
```    
这样当depth(node)为正数时，就保证了该节点已经balanced。
```cpp
    bool isBalanced(TreeNode* root) 
    {
        if (depth(root)==-1)
            return false;
        else
            return true;
    }
```    



[Leetcode Link](https://leetcode.com/problems/balanced-binary-tree)

$0
endsnippet
::::::::::::::
Tree/1123.Lowest-Common-Ancestor-of-Deepest-Leaves/1123.Lowest-Common-Ancestor-of-Deepest-Leaves.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-Deepest-Leaves "Lowest-Common-Ancestor-of-Deepest-Leaves" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int maxDepth = 0;
    int deepCount = 0;
    TreeNode* ret = NULL;
    unordered_map<int,int>Map;
public:
    TreeNode* lcaDeepestLeaves(TreeNode* root) 
    {        
        dfs(root, 1);    
        for (auto x:Map)
            deepCount += (x.second == maxDepth);
        dfs2(root);
        return ret;
    }

    void dfs(TreeNode* node, int depth)
    {
        if (node==NULL) return;
        Map[node->val] = depth;
        maxDepth = max(maxDepth, depth);
        dfs(node->left, depth+1);
        dfs(node->right, depth+1);
    }

    int dfs2(TreeNode* node)
    {
        if (node==NULL) return 0;
        int self = (Map[node->val]==maxDepth);
        int a = dfs2(node->left);
        int b = dfs2(node->right);
        if (self+a+b == deepCount && ret==NULL)
            ret = node;
        return self+a+b;
    }
};


$0
endsnippet
::::::::::::::
Tree/1123.Lowest-Common-Ancestor-of-Deepest-Leaves/Readme.md
::::::::::::::
snippet Lowest-Common-Ancestor-of-Deepest-Leaves "Lowest-Common-Ancestor-of-Deepest-Leaves" b
### 1123.Lowest-Common-Ancestor-of-Deepest-Leaves

提前遍历整棵树做预处理，记录整棵树最深的深度maxDepth，以及总共有多少个深度是maxDepth的节点deepCount. 

然后第二次遍历整棵树，从下往上查看每个节点包含多少个maxDepth的叶子节点。当找到第一个数目是deepCount的节点时，说明它的子树下面包含了所有的deepest leaves，这就是答案。


$0
endsnippet
::::::::::::::
Tree/114.Flatten-Binary-Tree-to-Linked-List/114.Flatten Binary Tree to Linked List.cpp
::::::::::::::
snippet Flatten-Binary-Tree-to-Linked-List "Flatten-Binary-Tree-to-Linked-List" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    void flatten(TreeNode* root) 
    {
        if (root==NULL) return;
        
        if (root->left!=NULL)
        {
            flatten(root->left);
            flatten(root->right);
            
            TreeNode* node = root->left;
            while (node->right!=NULL)
                node=node->right;
            
            node->right = root->right;
            root->right = root->left;
            root->left = NULL;
            
        }
        else
        {
            flatten(root->right);
        }
            
    }
    
};


$0
endsnippet
::::::::::::::
Tree/114.Flatten-Binary-Tree-to-Linked-List/Readme.md
::::::::::::::
snippet Flatten-Binary-Tree-to-Linked-List "Flatten-Binary-Tree-to-Linked-List" b
### 114.Flatten-Binary-Tree-to-Linked-List

用递归的思路。先各自flattern(root->left)和flattern(root->right)将左右子树分别扁平化。然后进入左子树一路向右找到最底层的节点node。将整颗右子树拼接到node->right，再把整颗左子树拼接到root->right。

最后重点，不要忘了把 root->left=NULL


[Leetcode Link](https://leetcode.com/problems/flatten-binary-tree-to-linked-list)

$0
endsnippet
::::::::::::::
Tree/117.Populating-Next-Right-Pointers-in-Each-Node-II/117.Populating Next Right Pointers in Each Node II.cpp
::::::::::::::
snippet Populating-Next-Right-Pointers-in-Each-Node-II "Populating-Next-Right-Pointers-in-Each-Node-II" b
/**
Definition for binary tree with next pointer.
struct TreeLinkNode {
 int val;
 TreeLinkNode *left, *right, *next;
 TreeLinkNode(int x) : val(x), left(NULL), right(NULL), next(NULL) {}
};
 */
class Solution {
public:
    void connect(TreeLinkNode *root) 
    {
        TreeLinkNode* now=root;
        TreeLinkNode* head=NULL;
        TreeLinkNode* tail=NULL;
        
        while (now!=NULL)
        {
            if (now->left!=NULL)
            {
                if (head==NULL) head=now->left;
                if (tail==NULL) 
                    tail=now->left;
                else
                {
                    tail->next = now->left;
                    tail=tail->next;
                }
            }
            if (now->right!=NULL)
            {
                if (head==NULL) head=now->right;
                if (tail==NULL) 
                    tail=now->right;
                else
                {
                    tail->next = now->right;
                    tail=tail->next;
                }
            }            
            now=now->next;
            if (now==NULL)
            {
                now=head;
                head=NULL;
                tail=NULL;
            }
        }
    }
};


$0
endsnippet
::::::::::::::
Tree/117.Populating-Next-Right-Pointers-in-Each-Node-II/Readme.md
::::::::::::::
snippet Populating-Next-Right-Pointers-in-Each-Node-II "Populating-Next-Right-Pointers-in-Each-Node-II" b
### 117.Populating-Next-Right-Pointers-in-Each-Node-II

此题的难点在于如何只用constant extra space实现树的level order traversal。对于一般的树结构,这是无法做到的,但本题的特点是:这里定义的TreeNode的数据结构允许一个横向的链接next,为我们的level-order-tranversal提供了便利.

我们定义三个指针now,head,tail。初始状态now=root; head=tail=NULL。Now是用来指向正在遍历的当前层的节点，head和tail指向下一层的头节点和尾节点。

我们在横向遍历now指针的时候，考察now->left和now->right，根据情况,不断更新head和tail. head只有一种情况需要更新,那就是如果head==NULL的话.对于tail的更新原则,永远就是让tail->next指向now的子节点(也就是引入新的tail),然后自己也右移一位。

当now==NULL时，说明当前层已经遍历完毕，然后怎么办呢?精彩的地方来了!就让now指向head即可，因为head就是下一层的头指针.然后将head和tail清空（指向NULL）,就重复了上面一段的操作.


[Leetcode Link](https://leetcode.com/problems/populating-next-right-pointers-in-each-node-ii)

$0
endsnippet
::::::::::::::
Tree/124.Binary-Tree-Maximum-Path-Sum/124.Binary-Tree-Maximum-Path-Sum.cpp
::::::::::::::
snippet Binary-Tree-Maximum-Path-Sum "Binary-Tree-Maximum-Path-Sum" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int ret = INT_MIN;
public:
    int maxPathSum(TreeNode* root) 
    {
        MaxDownPath(root);
        return ret;
    }
    
    int MaxDownPath(TreeNode* node)  // starting from node downward only, the max-sum path
    {
        if (node==NULL) return 0;
        
        int leftSum = MaxDownPath(node->left);
        int rightSum = MaxDownPath(node->right);
        
        int maxTurnSum = node->val;
        if (leftSum >= 0) maxTurnSum += leftSum;
        if (rightSum >= 0) maxTurnSum += rightSum;
        ret = max(ret, maxTurnSum);
        
        if (leftSum < 0 && rightSum < 0)
            return node->val;
        else
            return max(leftSum, rightSum) + node->val;
    }
};


$0
endsnippet
::::::::::::::
Tree/124.Binary-Tree-Maximum-Path-Sum/Readme.md
::::::::::::::
snippet Binary-Tree-Maximum-Path-Sum "Binary-Tree-Maximum-Path-Sum" b
### 124.Binary-Tree-Maximum-Path-Sum

任何一个max-sum-path必然会有唯一的一个最高节点（或者看作是拐点）。我们的基本思想就是遍历所有的node，计算它作为拐点所能取到的max-sum-path。然后用一个全局变量做实时的更新。

对于以node作为拐点的maxTurnSum，肯定包括了自己本身。那么往node的左节点再往下能走多远呢？其实取决于```maxDownSum(node->left)```。maxDownSum的意思是从起点出发往下“不拐弯”所能得到的最大路径和。如果```maxDownSum(node->left)>0```，那么maxTurnSum肯定会选择往左边继续往下，否则maxTurnSum就不会有左边的支路。对于右子树的分析同理。

所以我们有这样的表达式：
```
maxTurnSum(node) = node->val + max(0, maxDownSum(node->left)) + max(0, maxDownSum(node->right))
```

显然，我们真正需要写的递归函数应该是maxDownSum(node)：

1. 它的返回值所对应的是不要求拐弯的最大权重路径，所以 ```maxDownSum(node) = node->val + max(maxDownSum(node), maxDownSum(node->right)```。
2. 因为这个递归函数会遍历所有的node，所以利用访问node的机会，顺便计算maxTurnSum(node)，注意这个才是最终答案所需要的。


[Leetcode Link](https://leetcode.com/problems/binary-tree-maximum-path-sum)


$0
endsnippet
::::::::::::::
Tree/144.Binary-Tree-Preorder-Traversal/144.Binary Tree Preorder Traversal.cpp
::::::::::::::
snippet Binary-Tree-Preorder-Traversal "Binary-Tree-Preorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> preorderTraversal(TreeNode* root) 
    {
        vector<int>results;
        stack<TreeNode*>Stack;
        
        while (root!=NULL || !Stack.empty())
        {
            if (root!=NULL)
            {
                Stack.push(root);
                results.push_back(root->val);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                Stack.pop();
                root=root->right;
            }
        }
        
        return results;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/144.Binary-Tree-Preorder-Traversal/Readme.md
::::::::::::::
snippet Binary-Tree-Preorder-Traversal "Binary-Tree-Preorder-Traversal" b
### 144.Binary-Tree-Preorder-Traversal

二叉树中的经典题。用栈来实现二叉树的先序遍历（首先访问根节点）

基本思路：如果root非空，则读取数值（因为此root就是根节点）并压入栈，如果可能root=root->left一路朝左遍历到底层。如果发现root是空，则取栈顶元素并退栈（因为根节点都已经访问过了），令root是栈顶元素的右子树。然后就是重复之前的判断。


[Leetcode Link](https://leetcode.com/problems/binary-tree-preorder-traversal)

$0
endsnippet
::::::::::::::
Tree/145.Binary-Tree-Postorder-Traversal/145.Binary Tree Postorder Traversal.cpp
::::::::::::::
snippet Binary-Tree-Postorder-Traversal "Binary-Tree-Postorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> postorderTraversal(TreeNode* root) 
    {
        vector<int>results;
        stack<TreeNode*>Stack;
        unordered_set<TreeNode*>Set;
        
        while (!Stack.empty() || root!=NULL)
        {
            if (root!=NULL)
            {
                Stack.push(root);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                if (Set.find(root)==Set.end())
                {
                    Set.insert(root);
                    root = root->right;
                }
                else
                {
                    results.push_back(root->val);
                    Stack.pop();
                    root=NULL;
                }
            }
        }
        
        return results;
    }
};


$0
endsnippet
::::::::::::::
Tree/145.Binary-Tree-Postorder-Traversal/145.Binary-Tree-Postorder-Traversal_v2.cpp
::::::::::::::
snippet Binary-Tree-Postorder-Traversal "Binary-Tree-Postorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> postorderTraversal(TreeNode* root) 
    {        
        vector<int>rets;
        stack<pair<TreeNode*,int>>Stack;
        Stack.push({root, 0});

        while (!Stack.empty())
        {
            TreeNode* cur = Stack.top().first;
            int rev = Stack.top().second;
            Stack.pop();

            if (cur==NULL) continue;

            if (rev==1)
                rets.push_back(cur->val);
            else
            {
                Stack.push({cur, 1});
                Stack.push({cur->right, 0});
                Stack.push({cur->left, 0});
            }
        }
        return rets;
    }
};


$0
endsnippet
::::::::::::::
Tree/145.Binary-Tree-Postorder-Traversal/Readme.md
::::::::::::::
snippet Binary-Tree-Postorder-Traversal "Binary-Tree-Postorder-Traversal" b
### 145.Binary-Tree-Postorder-Traversal

本题和用栈实现二叉树的先序遍历和中序遍历的基本思路很相似，但更难一些。

既然是后序遍历，那么就要在遍历完左子树、右子树之后再读取数值。所以作为中继点的根节点会经过三次。第一次是通过根节点把左子树压入栈，第二次是通过根节点把右子树压入栈，第三次才是读取。所以我们设置一个set，来标记每个在退栈时被访问过的节点。

算法的基本结构保持和先序遍历算法一致：
1. 如果遇到非空节点，从根节点开始一路靠左入栈，入栈时不读取节点数值；
2. 当遇到空节点时，找到栈顶元素（局部的根节点）。如果之前没有被收录在set里，则记录之，并通过它把其右子树压入栈；
3. 如果栈顶元素已经被set记录过，此时说明其右节点已经遍历完毕，可以读取数值并将该节点退栈。（思考，退栈后root应该如何赋值？答案：把root赋值为NULL，这样就可以循环到第2步）
```cpp
        while(root!=NULL || !Stack.empty())
        {
            if (root!=NULL)
            {
                Stack.push(root);
                root=root->left;
            }
            else
            {
                root=Stack.top();
                if (Map.find(root)==Map.end())
                {
                    Map[root]=1;
                    root=root->right;
                }
                else
                {
                    results.push_back(root->val);
                    Stack.pop();
                    root=NULL;
                }
            }
        }
```        


[Leetcode Link](https://leetcode.com/problems/binary-tree-postorder-traversal)

$0
endsnippet
::::::::::::::
Tree/1516.Move-Sub-Tree-of-N-Ary-Tree/1516.Move-Sub-Tree-of-N-Ary-Tree.cpp
::::::::::::::
snippet Move-Sub-Tree-of-N-Ary-Tree "Move-Sub-Tree-of-N-Ary-Tree" b
/*
// Definition for a Node.
class Node {
public:
    int val;
    vector<Node*> children;

    Node() {}

    Node(int _val) {
        val = _val;
    }

    Node(int _val, vector<Node*> _children) {
        val = _val;
        children = _children;
    }
};
*/

class Solution {
    bool isDirectChild(Node* q, Node* p)
    {
        for (auto x: q->children)
        {
            if (x==p) return true;
        }
        return false;
    }
    
    Node* findParent(Node* root, Node* p)
    {
        for (auto x:root->children)
            if (x==p) return root;
        
        for (auto x:root->children)
        {
            Node* temp = findParent(x,p);
            if (temp!=NULL) return temp;                
        }            
        return NULL;
    }
    
    // Find child under parent, and replace it with node
    void disconnectOrReplace(Node* parent, Node* child, Node* node)
    {
        for (int i=0; i<parent->children.size(); i++)
        {
            if (parent->children[i]==child)
            {
                if (node==NULL)
                    parent->children.erase(parent->children.begin()+i);
                else
                    parent->children[i] = node;
                return;
            }                
        }
    }
    
public:
    Node* moveSubTree(Node* root, Node* p, Node* q) 
    {
        if (isDirectChild(q,p))
            return root;
        
        Node* parentOfp = findParent(q,p);
        Node* parentOfq = findParent(p,q);
        
        if (p==root)
        {
            disconnectOrReplace(parentOfq, q, NULL);
            q->children.push_back(p);
            return q;
        }   
        else if (parentOfp!=NULL)  // p is in the subtree of q
        {
            disconnectOrReplace(parentOfp, p, NULL);
            q->children.push_back(p);
            return root;
        } 
        else if (parentOfq!=NULL)    // q is in the subtree of p
        {
            disconnectOrReplace(parentOfq, q, NULL);
            Node* parentOfp = findParent(root,p);            
            disconnectOrReplace(parentOfp, p, q);
            q->children.push_back(p);
            return root;        
        }        
        else  // p and q are in different subtrees
        {
            Node* parentOfp = findParent(root,p);
            disconnectOrReplace(parentOfp, p, NULL);
            q->children.push_back(p);
            return root;        
        }        
    }
};


$0
endsnippet
::::::::::::::
Tree/1516.Move-Sub-Tree-of-N-Ary-Tree/Readme.md
::::::::::::::
snippet Move-Sub-Tree-of-N-Ary-Tree "Move-Sub-Tree-of-N-Ary-Tree" b
### 1516.Move-Sub-Tree-of-N-Ary-Tree

这道题的复杂之处在于需要考虑不同的情景，有不同的操作策略。

1. p是root。需要的操作：q与其父节点断开；p接为q的子节点；答案返回q。

2. p是q的子树里的节点。需要的操作：p与其父节点断开；将p子树接在q的子节点；答案返回root。

3. q是p的子树里的节点。需要的操作：q与其父节点断开；将p子树与其父节点断开，改换为q子树；将p子树接在q的子节点；答案返回root。

4. p和q没有直属关系。需要的操作：p与其父节点断开；将p子树接在q的子节点；答案返回root。

要正确判断这四种情景，需要设计一个函数```Node* findParent(Node* root, Node* node)```，表示从root出发，试图寻找node的parent，找不到则返回NULL。情境2对应的是```findParent(q,p)!=NULL```，情境3对应的是```findParent(p,q)!=NULL```.

另外，设计一个函数```void disconnectOrReplace(Node* parent, Node* child, Node* node)```能够极大方便操作，它的作用是find child under parent, and replace it with node。如果node是NULL的话，就从parent里删除这个child。
    


$0
endsnippet
::::::::::::::
Tree/1569.Number-of-Ways-to-Reorder-Array-to-Get-Same-BST/1569.Number-of-Ways-to-Reorder-Array-to-Get-Same-BST.cpp
::::::::::::::
snippet Number-of-Ways-to-Reorder-Array-to-Get-Same-BST "Number-of-Ways-to-Reorder-Array-to-Get-Same-BST" b
class Solution {
    struct TreeNode {
      int val;
      TreeNode *left;
      TreeNode *right;
      TreeNode(int x) : val(x), left(NULL), right(NULL) {}
    };
    
    long M = 1e9+7;
    long comb[1001][1001];

    long getComb(long m, long n)
    {
        if (comb[m][n]!=-1)
            return comb[m][n];
        if (n==0) return 1;
        if (n==1) return m;        
        if (n>m-n) return getComb(m, m-n);
        long a = getComb(m-1, n-1);        
        long b = getComb(m-1, n);
        comb[m][n] = (a+b)%M;
        return comb[m][n];
    }
    
public:
    int numOfWays(vector<int>& nums) 
    {
        for (int i=0; i<=1000; i++)
            for (int j=0; j<=1000; j++)
                comb[i][j] = -1;
        
        TreeNode* root = new TreeNode(nums[0]);
        for (int i=1; i<nums.size(); i++)        
            insertNode(root, nums[i]);
                    
        long num, val;
        dfs(root, num, val);
        return val-1;
    }

    void insertNode(TreeNode* root, int val)
    {
        if (val < root->val)
        {
            if (root->left==NULL)
                root->left = new TreeNode(val);
            else
                insertNode(root->left, val);
        }
        else
        {
            if (root->right==NULL)
                root->right = new TreeNode(val);
            else
                insertNode(root->right, val);
        }
    }
    
    void dfs(TreeNode* node, long& num, long& val)
    {
        if (node->left==NULL && node->right==NULL)
        {
            num = 1;
            val = 1;
            return;
        }
        
        long leftNum = 0, leftVal = 1;
        long rightNum = 0, rightVal = 1;
        if (node->left)
            dfs(node->left, leftNum, leftVal);
        if (node->right)
            dfs(node->right, rightNum, rightVal);
        
        num = leftNum+rightNum+1;
        val = ((getComb(leftNum+rightNum, leftNum) * leftVal) % M * rightVal) % M;
        return;        
    }
};


$0
endsnippet
::::::::::::::
Tree/1569.Number-of-Ways-to-Reorder-Array-to-Get-Same-BST/Readme.md
::::::::::::::
snippet Number-of-Ways-to-Reorder-Array-to-Get-Same-BST "Number-of-Ways-to-Reorder-Array-to-Get-Same-BST" b
### 1569.Number-of-Ways-to-Reorder-Array-to-Get-Same-BST

首先我们要搞清楚一件事情，为什么原题条件所给的一个序列能对应一棵BST？而为什么那棵BST又可以对应其他很多的序列？

第一步要知道，条件所给的一个序列，能构造出唯一的一棵BST。怎么做？比较基础的办法就是逐个点地加上去。第一个点是根节点。第二点放在根节点左边还是右边，取决于它与根节点的相对大小。第三个节点放在哪里？其实只要从根节点出发，每一步做比较，比根大就往右边走，比根小就往左边走，直到遇到一个空节点的位置就放置在哪里。从这个过程可以知道，这个序列对应了一棵确定的BST。

第二步要知道，给定了一棵BST，为什么可以有多种序列？我们仔细研究这个序列生成的本质，其实是因为“左右子树节点的向下生成允许交错并行”。

举个第二个样例：
```
      3
    1   4
     2   5
```
对于根节点而言，它的左子树只能有一种序列[1,2]，它的右子树只能有一种序列[4,5]。但是对于整棵树而言的序列，除了根节点3必须放在第一个，序列的剩下部分只需要满足[1,2]与[4,5]的相对顺序不变即可。也就是
```
[3,1,2,4,5]
[3,1,4,2,5]
[3,1,4,5,2]
[3,4,1,2,5]
[3,4,1,5,2]
[3,4,5,1,2]
```
我们看出，[1,2]和[4,5]的任意次序的交叠(interleave)都是可以的。这样总共产生了6种。

这6种如何计算出来？我们可以更一般地设计两个序列，第一个长度是m，第二个长度是n，求“保持各自相对顺序的任意交叠”序列有多少个？这其实是一个高中组合数学的中等题。我们在总共m+n个位置中，只要选择出其中m个位置填上第一个序列，那么其他一切都能确定下来：这m个位置如何填充必须依照序列一的顺序；剩下的n个位置自然就是给第二个序列，并且他们如何填充必须依照序列二的顺序。所以我们只需要做的就是从m+n个位置中挑选m个，也就是```C(m+n,n)```。

解决了这个问题，我们就可以知道对任意一棵树，如何计算它的序列的个数。我们可以先递归处理它的子树，计算它的左子树有L种序列，它的右子树有R种序列，那么每一对左右序列，我们又可以产生C(m+n,n)种交叠序列（也就是这棵树本身的序列）。所以答案就是L*R*C(m+n,n)，其中m是左子树序列的长度（也就是左子树的节点总数），n是右子树序列的长度（也就是右子树的节点总数）。

可见，本题的大框架就是一个递归。从底层节点算起，不断给上层节点提供数据。

边界条件是叶子节点，序列数必然是1.

另外，本题需要计算大组合数以及算它对大质数的模。我们这里抛开逆元的用法，采用一个更容易理解的算法。利用组合数的递推公式:```C(m+n,n) = C(m+n-1,n) + C(m+n-1,n-1)```。这样可以将大组合数分解为小组合数，直至边界条件是```C(x,1) = x, C(x,0) = 1```。对于加法的分拆，```(a+b)%M = a% + b%M```是可以放心使用的。


$0
endsnippet
::::::::::::::
Tree/156.Binary-Tree-Upside-Down/156.Binary Tree Upside Down.cpp
::::::::::::::
snippet Binary-Tree-Upside-Down "Binary-Tree-Upside-Down" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* upsideDownBinaryTree(TreeNode* root) 
    {
        if (root==NULL) return NULL;
        
        if (root->left==NULL) 
            return root;
        else
        {
            TreeNode* nextRoot = root->left;
            TreeNode* nextRootAlien = new TreeNode(root->left->val);
            nextRootAlien->right = root;
            nextRootAlien->left = root->right;
            root->left=NULL;
            root->right=NULL;
            return DFS(nextRoot,nextRootAlien);
        }
    }
    
    TreeNode* DFS(TreeNode* root, TreeNode* rootAlien)
    {
        if (root->left==NULL) 
            return rootAlien;
        else
        {
            TreeNode* nextRoot = root->left;
            TreeNode* nextRootAlien = new TreeNode(root->left->val);
            nextRootAlien->right = rootAlien;
            nextRootAlien->left = root->right;
            return DFS(nextRoot,nextRootAlien);
        }
        
    }
};


$0
endsnippet
::::::::::::::
Tree/156.Binary-Tree-Upside-Down/Readme.md
::::::::::::::
snippet Binary-Tree-Upside-Down "Binary-Tree-Upside-Down" b
### 156.Binary-Tree-Upside-Down

此题的意思是：对于一个根-左-右的基本树状结构，右子树保证只有一个或为空。要求变形后，以左子树为根，把原来的根和右节点作为新根节点的右、左节点。

解决此题的思路应该坚定不移地寻找递归方案。

经过分析，应该能够发现，对于一个root,left,right的基本结构，变形后的新结构应该变为：递归(root->left)作为根，root作为右，root->left作为左。于是代码就非常好写了。

注意到递归(root->left)返回的是它的根节点。怎么把root作为递归(root->left)的右子树呢？只要不停地从根节点往右子树方向移动就可以了。

基本代码思路
```cpp
head=upsideDownBinaryTree(root->left);
node=head一路向右；
node->right=root;
node->left=root->right;
root->left=NULL; //root原本的左右子节点要清空
root->right=NULL;
```




[Leetcode Link](https://leetcode.com/problems/binary-tree-upside-down)

$0
endsnippet
::::::::::::::
Tree/1597.Build-Binary-Expression-Tree-From-Infix-Expression/1597.Build-Binary-Expression-Tree-From-Infix-Expression.cpp
::::::::::::::
snippet Build-Binary-Expression-Tree-From-Infix-Expression "Build-Binary-Expression-Tree-From-Infix-Expression" b
/**
Definition for a binary tree node.
struct Node {
    char val;
    Node *left;
    Node *right;
    Node() : val(' '), left(nullptr), right(nullptr) {}
    Node(char x) : val(x), left(nullptr), right(nullptr) {}
    Node(char x, Node *left, Node *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
public:
    Node* expTree(string s) 
    {
        if (s.size()==1)
        {
            Node* root = new Node(s[0]);
            return root;
        }
        
        for (int i=s.size()-1; i>=0; i--)
        {
            if (s[i]=='+' || s[i]=='-')
            {
                Node* root = new Node(s[i]);
                root->right = expTree(s.substr(i+1));
                root->left = expTree(s.substr(0,i));                
                return root;
            }            
            else if (s[i]==')')
            {
                int j = i-1;
                int count = 1;
                while (j>=0 && count>0)
                {
                    if (s[j]==')')
                        count++;
                    else if (s[j]=='(')
                        count--;
                    j--;
                }
                i = j+1;
            }
        }
        
        for (int i=s.size()-1; i>=0; i--)
        {
            if (s[i]=='*' || s[i]=='/')
            {
                Node* root = new Node(s[i]);
                root->right = expTree(s.substr(i+1));
                root->left = expTree(s.substr(0,i));                
                return root;
            }            
            else if (s[i]==')')
            {
                int j = i-1;
                int count = 1;
                while (j>=0 && count>0)
                {
                    if (s[j]==')')
                        count++;
                    else if (s[j]=='(')
                        count--;
                    j--;
                }
                i = j+1;
            }
        }
        
        if (s[0]=='(' && s.back()==')')
            return expTree(s.substr(1, s.size()-2));
        
        return NULL;                
    }
};


$0
endsnippet
::::::::::::::
Tree/1597.Build-Binary-Expression-Tree-From-Infix-Expression/Readme.md
::::::::::::::
snippet Build-Binary-Expression-Tree-From-Infix-Expression "Build-Binary-Expression-Tree-From-Infix-Expression" b
### 1597.Build-Binary-Expression-Tree-From-Infix-Expression

基本的思想就是递归处理。

模拟运算的顺序，最high level必然是加减法。所以我们从后往前搜寻第一个不在括号内的加号或者减号。然后以该运算符为根节点，将整个字符串就分为前后两部分，分别递归生成它的左右节点。那么如何避免搜到包含在括号内的加减号呢？方法很显然，我们遇到第一个最外层的右括号的时候，就开启括号匹配模式。用一个计数器来统计未匹配的右括号，直至计数器恰好变为0，那么说明这一对最外层括号找齐了，那么从此之后恢复寻找第一个加减号的模式。

以上的one pass结束之后如果没有进入下一层，说明表达式中没有括号外的加减号。那么重复上述的过程，目标改为从后往前搜寻第一个不在括号内的乘号或者除号。然后以该运算符为根节点，将整个字符串就分为前后两部分，分别递归生成它的左右节点。

如果上面的one pass结束之后仍然没有进入下一层，那么就说明这个表达式本身就是被一对括号包裹着。那么我们将这对括号脱去，递归处理里面的字符串就行了。

最后的边界条件就是表达式的长度为1，说明就是一个数字，那么直接以其建立叶子节点，返回即可。


$0
endsnippet
::::::::::::::
Tree/1644.Lowest-Common-Ancestor-of-a-Binary-Tree-II/1644.Lowest-Common-Ancestor-of-a-Binary-Tree-II.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-II "Lowest-Common-Ancestor-of-a-Binary-Tree-II" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    TreeNode* ret = NULL;
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) 
    {
        int a = dfs(root, p, q);
        return ret;      
    }
    
    int dfs(TreeNode* root, TreeNode* p, TreeNode* q)
    {
        if (root==NULL) return 0;
        int left = dfs(root->left, p, q);
        int right = dfs(root->right, p, q);
        int self = (root==p || root==q);
        int count = left+right+self;
        if (count==2 && ret==NULL)
            ret = root;
        return count;
    }
};


$0
endsnippet
::::::::::::::
Tree/1644.Lowest-Common-Ancestor-of-a-Binary-Tree-II/Readme.md
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-II "Lowest-Common-Ancestor-of-a-Binary-Tree-II" b
### 1644.Lowest-Common-Ancestor-of-a-Binary-Tree-II

LC.236的递归解法完全可以适用于本题。


$0
endsnippet
::::::::::::::
Tree/1650.Lowest-Common-Ancestor-of-a-Binary-Tree-III/1650.Lowest-Common-Ancestor-of-a-Binary-Tree-III.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-III "Lowest-Common-Ancestor-of-a-Binary-Tree-III" b
/*
// Definition for a Node.
class Node {
public:
    int val;
    Node* left;
    Node* right;
    Node* parent;
};
*/

class Solution {
public:
    Node* lowestCommonAncestor(Node* p, Node * q) 
    {
        vector<Node*>a;
        while (p!=NULL)
        {
            a.push_back(p);
            p = p->parent;
        }
        vector<Node*>b;
        while (q!=NULL)
        {
            b.push_back(q);
            q = q->parent;
        }
        reverse(a.begin(), a.end());
        reverse(b.begin(), b.end());
        int i = 0;
        Node* ret;
        while (i<a.size() && i<b.size() && a[i]==b[i])
        {
            ret = a[i];
            i++;
        }
        return ret;
    }
};


$0
endsnippet
::::::::::::::
Tree/1650.Lowest-Common-Ancestor-of-a-Binary-Tree-III/Readme.md
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-III "Lowest-Common-Ancestor-of-a-Binary-Tree-III" b
### 1650.Lowest-Common-Ancestor-of-a Binary-Tree-III

本题既然给出了每个节点的parent，那么只要把p和q上行至root的路径都遍历出来，然后分别反向。这样两条路径的最后一个公共节点就是LCA。


$0
endsnippet
::::::::::::::
Tree/1660.Correct-a-Binary-Tree/1660.Correct-a-Binary-Tree.cpp
::::::::::::::
snippet Correct-a-Binary-Tree "Correct-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {    
public:
    TreeNode* correctBinaryTree(TreeNode* root) 
    {
        unordered_set<int>Set;
        queue<TreeNode*>q;
        q.push(root);
        Set.insert(root->val);
        while (!q.empty())
        {
            int len = q.size();
            while (len--)
            {
                TreeNode* node = q.front();                
                q.pop();
                
                if (node->right)
                {
                    TreeNode* p = node->right;
                    if (p->right && Set.find(p->right->val)!=Set.end())
                    {
                        node->right = NULL;
                        return root;
                    }
                    q.push(p);
                    Set.insert(p->val);
                }
                if (node->left)
                {
                    TreeNode* p = node->left;
                    if (p->right && Set.find(p->right->val)!=Set.end())
                    {
                        node->left = NULL;
                        return root;
                    }
                    q.push(p);
                    Set.insert(p->val);
                }
            }
        }
        return root;
    }
    
};


$0
endsnippet
::::::::::::::
Tree/1660.Correct-a-Binary-Tree/Readme.md
::::::::::::::
snippet Correct-a-Binary-Tree "Correct-a-Binary-Tree" b
### 1660.Correct-a-Binary-Tree

用BFS进行层级遍历。对于出队列的节点node，我们查看node的右节点p（如果存在的话）：如果p的右节点存在并且是已经访问过的（设置一个集合盛装访问过的节点数值），那说明p是非法节点，把node->righ指向空。否则接下来考察node的左节点（如果存在的话），重复之前的操作。最后把所有的节点都层级遍历完。


$0
endsnippet
::::::::::::::
Tree/1666.Change-the-Root-of-a-Binary-Tree/1666.Change-the-Root-of-a-Binary-Tree.cpp
::::::::::::::
snippet Change-the-Root-of-a-Binary-Tree "Change-the-Root-of-a-Binary-Tree" b
/*
// Definition for a Node.
class Node {
public:
    int val;
    Node* left;
    Node* right;
    Node* parent;
};
*/

class Solution {
public:
    Node* flipBinaryTree(Node* root, Node * leaf) {
        dfs(NULL,leaf);
        return leaf;
    }
    
    void dfs(Node* pre,Node* node)
    {
        if (node==NULL) return;
        
        Node* p=node->parent;
        node->parent=pre;
                
        if (p==NULL)
        {
            if(node->left==pre)
            {
                node->left = NULL;
            }            
            else if(node->right==pre)
            {
                node->right = NULL;
            }            
        }
        else
        {
            if(node->left==pre)
            {
                node->left = p;
            }            
            else if(node->right==pre)
            {
                node->right=node->left;
                node->left = p;
            }
        }
            
        dfs(node,p);
    }
};


$0
endsnippet
::::::::::::::
Tree/1666.Change-the-Root-of-a-Binary-Tree/Readme.md
::::::::::::::
snippet Change-the-Root-of-a-Binary-Tree "Change-the-Root-of-a-Binary-Tree" b
### 1666.Change-the-Root-of-a-Binary-Tree

这道题的dfs过程其实应该是从leaf往上走直至root。对于每一个node，我们要更改它的left，right和parent。node->parent应该指向node的前驱节点（也就是处于leaf->root路径上的那个child）。node->left应该指向往上的路径（也就是原先的parent）。node->right应该指向它的另外一个child（即非leaf->root路径上的那个child）。然后递归处理leaf->root路径上的下一个节点。

此题另外有一个陷阱是题意要求对于root的处理，与其他node的处理方法略有不同。只需要将node->parent指向前驱节点，再将处于leaf->root路径上的那个child置为NULL即可。不需一定要将非路径上的child迁移到右节点。


$0
endsnippet
::::::::::::::
Tree/1676.Lowest-Common-Ancestor-of-a-Binary-Tree-IV/1676.Lowest-Common-Ancestor-of-a-Binary-Tree-IV.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-IV "Lowest-Common-Ancestor-of-a-Binary-Tree-IV" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    unordered_set<TreeNode*>Set;
    TreeNode* ret = NULL;
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, vector<TreeNode*> &nodes) 
    {
        for (auto x: nodes)
            Set.insert(x);
        
        dfs(root);
        return ret;        
    }
    
    int dfs(TreeNode* node)
    {
        if (node==NULL) return 0;
        int left = dfs(node->left);
        int right = dfs(node->right);
        int self = Set.find(node)!=Set.end();
        if (left+right+self==Set.size() && ret==NULL)
            ret = node;
        return left+right+self;
    }
};


$0
endsnippet
::::::::::::::
Tree/1676.Lowest-Common-Ancestor-of-a-Binary-Tree-IV/Readme.md
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree-IV "Lowest-Common-Ancestor-of-a-Binary-Tree-IV" b
### 1676.Lowest-Common-Ancestor-of-a-Binary-Tree-IV

此题和```LC.236```一模一样的思想。令```int dfs(node)```表示以node为根的子树里面包含了多少个指定的节点。假设题目给出的nodes的个数是n，那么在从下往上返回的过程中，第一个发现dfs返回值是n的节点必然就是所有nodes的LCA。


$0
endsnippet
::::::::::::::
Tree/1740.Find-Distance-in-a-Binary-Tree/1740.Find-Distance-in-a-Binary-Tree.cpp
::::::::::::::
snippet Find-Distance-in-a-Binary-Tree "Find-Distance-in-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int ret = -1;
public:
    int findDistance(TreeNode* root, int p, int q) 
    {
        dfs(root, p, q);        
        return ret;
    }
    
    pair<int,int> dfs(TreeNode* root, int p, int q)
    {
        if (ret!=-1) return {-1,-1};
        if (root==NULL) return {-1, -1};
        
        auto ans1 = dfs(root->left, p, q);
        auto ans2 = dfs(root->right, p, q);
        
        int a = -1, b = -1;
        if (ans1.first!=-1)
            a = ans1.first+1;
        else if (ans2.first!=-1)
            a = ans2.first+1;
        else if (root->val==p)
            a = 0;
        
        if (ans1.second!=-1)
            b = ans1.second+1;
        else if (ans2.second!=-1)
            b = ans2.second+1;
        else if (root->val==q)
            b = 0;
        
        if (ret==-1 && a!=-1 && b!=-1)
        {
            ret = a+b;
        }
        return {a,b};
    }
};


$0
endsnippet
::::::::::::::
Tree/1740.Find-Distance-in-a-Binary-Tree/1740.Find-Distance-in-a-Binary-Tree_v2.cpp
::::::::::::::
snippet Find-Distance-in-a-Binary-Tree "Find-Distance-in-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int lcaDepth = -1, pDepth, qDepth;
    TreeNode* lcaNode;
    int lowestCommonAncestor(TreeNode* root, int p, int q, int depth) {
        if(!root) return 0;

        int count = lowestCommonAncestor(root->left, p, q, depth + 1) + 
                    lowestCommonAncestor(root->right, p, q, depth + 1) +
                    (root->val == p) + (root->val == q);

        if(root->val == p) pDepth = depth; 
        if(root->val == q) qDepth = depth;
        if(count == 2 && lcaDepth == -1) lcaDepth = depth;
        
        return count;
    }
public:
    int findDistance(TreeNode* root, int p, int q) {
        lowestCommonAncestor(root, p, q, 0);

        return (pDepth - lcaDepth) + (qDepth - lcaDepth);
    }
};


$0
endsnippet
::::::::::::::
Tree/1740.Find-Distance-in-a-Binary-Tree/Readme.md
::::::::::::::
snippet Find-Distance-in-a-Binary-Tree "Find-Distance-in-a-Binary-Tree" b
### 1740.Find-Distance-in-a-Binary-Tree

很显然，本题中的那个“拐点”必然是两个节点的LCA。

本题的解法可以很暴力，直接寻找从root到p与q分别的路径，根据记录路径然后找出LCA分别到p和q的长度。

更加节省空间的方法就是纯递归。在LC236的想法里，dfs(node)返回的是该节点的子树里包含了多少个p或者q。在本题中，我们可以有类似的思想：定义dfs(node)的返回值是一个pair，包含node与p的距离、node与q的距离。如果node下属没有子节点是p和q，那么对应的值是-1.

先分别递归```ans1 = dfs(node->left, p, q)```和```ans2 = dfs(node->left, p, q)```. 分情况讨论：
1. 如果已知左节点到p的距离x，那么说明node到p的距离是x+1
2. 如果已知右节点到p的距离x，那么说明node到p的距离是x+1
3. 如果node本身就是p，那么说明node到p的距离是0
4. 其余的情况，node到p的距离标记为-1

同理，处理对于node到q的距离处理。

因为递归是从下往上走的，如果第一次出现node到p和q的距离都不是-1，那么node就是p和q的LCA。答案就是两距离之和。


$0
endsnippet
::::::::::::::
Tree/1902.Depth-of-BST-Given-Insertion-Order/1902.Depth-of-BST-Given-Insertion-Order.cpp
::::::::::::::
snippet Depth-of-BST-Given-Insertion-Order "Depth-of-BST-Given-Insertion-Order" b
class Solution {
public:
    int maxDepthBST(vector<int>& order) 
    {
        map<int,int>Map;
        Map[0] = 100001;                
        
        vector<int>depth(100005, 0);
        
        int ret = 0;
        for (auto x: order)
        {
            int left = prev(Map.upper_bound(x))->first;
            int right = Map[left];
            depth[x] = depth[left] + 1;
            
            if (left <= x-1) 
            {
                Map[left] = x-1;
                depth[left] = depth[x];
            }
            if (right >= x+1) 
            {
                Map[x+1] = right;
                depth[x+1] = depth[x];            
            }
            
            ret = max(ret, depth[x]);
        }
        
        return ret;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/1902.Depth-of-BST-Given-Insertion-Order/Readme.md
::::::::::::::
snippet Depth-of-BST-Given-Insertion-Order "Depth-of-BST-Given-Insertion-Order" b
### 1902.Depth-of-BST-Given-Insertion-Order

我们用Map[i]来表示一段未被深入分割的区间。例如```Map[3] = 5```，就是表示的区间[3,5]. 在初始的时候我们令```Map[0]=100001```. 同时我们令```depth[0]=0```，表示这段区间的深度是0.

假设序列的第一个元素是3，那么在Map里能找到的、包含3的区间就是[0,100001]，那么意味着3要将这个区间拆分为两个部分，即[0,2]和[4,100001]，于是我们就有更新```Map[0]=2, Map[4]=100001```。这个拆分会导致节点3的深度继承自区间[0,100001]的深度加1，即```depth[3]=depth[0]+1```；同时节点3左右两侧的两个区间，它们的深度与节点3平级，也记为```depth[0]=1, depth[4]=1```.

以此类推，我们每处理一个x，就找到包含x的这个区间[left,right]，即有Map[left]=right. 然后新开辟的两个区间[left,x-1],[x+1,right]，以及节点x本身，这三者的深度都定义为区间[left,right]的深度加1.

最终找全局节点深度的最大值即为答案。


$0
endsnippet
::::::::::::::
Tree/1932.Merge-BSTs-to-Create-Single-BST/1932.Merge-BSTs-to-Create-Single-BST.cpp
::::::::::::::
snippet Merge-BSTs-to-Create-Single-BST "Merge-BSTs-to-Create-Single-BST" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    unordered_map<int,TreeNode*>val2root;
    unordered_set<int>nodeVals;
    unordered_set<int>visited;
public:
    void checkNodes(TreeNode* node)
    {
        if (node==NULL) return;
        nodeVals.insert(node->val);
        checkNodes(node->left);
        checkNodes(node->right);
    }

    TreeNode* canMerge(vector<TreeNode*>& trees) 
    {
        int n = trees.size();        
        for (int i=0; i<n; i++)
        {
            val2root[trees[i]->val] = trees[i];
            checkNodes(trees[i]->left);
            checkNodes(trees[i]->right);
        }
        
        int count = 0;
        TreeNode* root;
        for (int i=0; i<n; i++)
        {
            if (nodeVals.find(trees[i]->val)==nodeVals.end())
            {
                root = trees[i];
                count++;
            }                
        }
        if (count != 1) return NULL;

        visited.insert(root->val);
        bool ok = dfs(root, INT_MIN, INT_MAX);
        if (ok && visited.size()==n)
            return root;
        else
            return NULL;
    }

    bool dfs(TreeNode*& node, int mn, int mx)
    {
        if (node==NULL) return true;
        if (node->val < mn || node->val > mx) return false;
        int val = node->val;
        if (node->left || node->right)
        {
            return dfs(node->left, mn, val - 1) && dfs(node->right, val+1, mx);
        }
        else if (val2root.find(val)!=val2root.end())
        {
            node = val2root[val];
            visited.insert(val);
            return dfs(node->left, mn, val - 1) && dfs(node->right, val+1, mx);
        }
        return true;
    }
};


$0
endsnippet
::::::::::::::
Tree/1932.Merge-BSTs-to-Create-Single-BST/Readme.md
::::::::::::::
snippet Merge-BSTs-to-Create-Single-BST "Merge-BSTs-to-Create-Single-BST" b
### 1932.Merge-BSTs-to-Create-Single-BST

本题的突破口在于root的选择。因为我们要合并所有的小BST，所以说明任何小BST的任何子节点肯定不会是合并得到的大BST的根节点（如果是的话，那么这棵大BST就会有重复的元素）。所以大BST的根节点肯定不会出现在所有小BST的子节点里。于是，我们将所有小BST的子节点放入一个集合nodeVals里面，再逐一查看哪个小BST的根节点没有出现在nodeVals里。注意，这样的根节点只会有一个。假设有两个小BST的根节点A和B都不在nodeVals里，那么如果以A为大BST的根节点进行合并时，因为没有任何小BST的子节点等于B，那么根据规则，B永远都不会被merge进来。

根据以上分析，我们就可以通过nodeVals，确定哪个小BST是作为合并大BST的根root。然后我们就以其为根进行构造整棵树。

接下来的一个问题，我们从root下沉到了叶子节点C，然后发现C恰好是某个小BST的根，那么我们是否一定要把那个小BST就在此处merge进来呢？结论是需要，因为最终整颗大BST的所有节点元素都是unique的，一棵符合要求的大BST不会在其他地方再出现C了。此时我们不去合并，那么那个以C为根的小BST就永远没机会被合并进来。所以我们在从root往下沉的过程中，一定遇到某个叶子节点与某棵小BST的根相同，那么就把那个小BST拼接过来，然后继续递归下沉。

接下来的一个问题，如果我们拼接了一个小BST，那么这样的拼接是否满足整颗大BST的性质呢？这就需要检验。检验的方法和简单，就是在dfs下沉的过程中带上对于子树的range限制。比如对于整颗大BST的根，我们的range是```[INT_MIN,INT_MAX]```：那么对于根的左孩子，它的range应该是```[INT_MIN, root->val-1]```；对于根的右孩子，它的range应该是```[root->val+1，INT_MAX]```。以此类推，我们一边拼接小BST，一边下沉检查每个节点的val和range，一旦发现节点的val不符合range要求，那么就说明这违反了BST的性质，就可以返回false表示构建这样的大BST一定是失败的。

另外还有一点需要检查的：是否所有的小BST都被merge进来。所以我们用一个集合来收录所有构造过程中被merge的小BST的根，最终检查集合的大小是否为n。


$0
endsnippet
::::::::::::::
Tree/1948.Delete-Duplicate-Folders-in-System/1948.Delete-Duplicate-Folders-in-System.cpp
::::::::::::::
snippet Delete-Duplicate-Folders-in-System "Delete-Duplicate-Folders-in-System" b
class Solution {
    struct TreeNode {
        string val;
        map<string, TreeNode*> next;  
        TreeNode(string s) : val(s) {}
    };
    TreeNode* root;
    unordered_map<string, int>key2Id;
    unordered_map<string, int>key2count;
    unordered_map<TreeNode*, string> node2key;
    vector<vector<string>>rets;
    
public:
    vector<vector<string>> deleteDuplicateFolder(vector<vector<string>>& paths) 
    {
        root = new TreeNode("/");
        for (auto path: paths)
        {
            TreeNode* node = root;
            for (auto s: path)
            {
                if (node->next.find(s)==node->next.end())
                    node->next[s] = new TreeNode(s);
                node = node->next[s];
            }
        }
        
        getId(root);
        
        vector<string>path;
        dfs(root, path);
        
        return rets;        
    }
    
    int getId(TreeNode* node)
    {
        if (node==NULL)
            return 0;
        
        string key;
        for (auto x: node->next)
        {
            TreeNode* child = x.second;
            key += to_string(getId(child)) + "#" + child->val + "#";
        }
        
        node2key[node] = key;
        
        key2count[key] += 1;
        if (key2count[key]==1)
        {
            key2Id[key] = key2Id.size()+1;
        }
        
        return key2Id[key];
    }
        
    void dfs(TreeNode* node, vector<string>&path)
    {
        string key = node2key[node];
        
        if (key!="" && key2count[key]>=2)
            return;
        
        if (node->val!="/")
        {
            path.push_back(node->val);
            rets.push_back(path);            
        }
        
        for (auto x : node->next)
        {
            dfs(x.second, path);
        }
        
        if (node->val!="/")
        {
            path.pop_back();            
        }        
    }
    
};


$0
endsnippet
::::::::::::::
Tree/1948.Delete-Duplicate-Folders-in-System/Readme.md
::::::::::::::
snippet Delete-Duplicate-Folders-in-System "Delete-Duplicate-Folders-in-System" b
### 1948.Delete-Duplicate-Folders-in-System

此题的本质就是```652.Find-Duplicate-Subtrees```. 我们给树的每个节点对应的subtree设计Hash。对应同一个Hash Key的subtree都是duplicate的。我们在第二次遍历整棵树的时候，遇到duplicate subtree就终止并返回即可。

本题与652的区别是，判断两棵子树A与B是否相同的定义，与子树的根节点本身无关。只要A的所有子节点与B的所有子节点相同，那么A与B就判定是相同的。所以我们给子树node设计Hash的时候，不需要考虑node本身，而是考虑node的所有子节点的Hash以及所有子节点的val。即
```
string key(node) = key(node->child_1) + "#" + node->child_1->val + "#" + key(node->child_2) + "#" + node->child_2->val + "#" ....
```
注意为什么我们既要每个child的key，又要child的val。这是基于我们之前对于key的定义，key(child)本身并不包括child的val。所以为了正确地表示node的所有子节点，我们需要把child的这两部分都加入key(node)里面。

此外我们会发现，这样递归的结果会造成顶端节点的key越来越长。同652的做法，我们可以将key映射成一个数字ID，这样就避免了key长度的膨胀。每个node的key的长度只与有多少一代孩子有关。即
```cpp
int getId(node) {
  string key(node) = getId(node->child_1) + "#" + node->child_1->val + "#" + 
                     getId(node->child_2) + "#" + node->child_2->val + "#" + ....
  return getId(node) by mapping key(node) to a new Id;
}
```

第一次遍历这棵树的时候，我们记下每个节点的key并更新key在整棵树里出现的次数。在第二次遍历整棵树的时候，我们如果发现某个节点的key出现过了两次以上，就不再打印和继续访问。


$0
endsnippet
::::::::::::::
Tree/2003.Smallest-Missing-Genetic-Value-in-Each-Subtree/2003.Smallest-Missing-Genetic-Value-in-Each-Subtree_v1.cpp
::::::::::::::
snippet Smallest-Missing-Genetic-Value-in-Each-Subtree "Smallest-Missing-Genetic-Value-in-Each-Subtree" b
class Solution {    
    unordered_set<int>Set;
    vector<int>children[100001];
    int q = 1;
public:
    vector<int> smallestMissingValueSubtree(vector<int>& parents, vector<int>& nums) 
    {
        int n = parents.size();                
        for (int i=1; i<n; i++)
        {
            if (parents[i]!=-1)
                children[parents[i]].push_back(i);
        }
        
        vector<int>val2node(100001, -1);
        vector<int>rets(n, 1);
        
        for (int i=0; i<n; i++)
            val2node[nums[i]] = i;
        
        if (val2node[1]==-1)
            return rets;
        
        int node = val2node[1];
        for (int child: children[node])
            dfs1(child, rets);                        
        while (node!=0)
        {
            int p = parents[node];
            for (int child: children[p])
            {
                if (child!=node)
                    dfs1(child, rets);
            }
            node = p;
        }
                                
        node = val2node[1];
        while (node!=-1)
        {
            dfs(node, nums);                            
            while (Set.find(q)!=Set.end())
                q++;
            rets[node] = q;
            node = parents[node];
        }
        
        return rets;        
    }
    
    void dfs1(int node, vector<int>&rets)
    {
        rets[node] = 1;    
        for (auto child: children[node])        
            dfs1(child, rets);                
    }
    
    void dfs(int node, vector<int>&nums)
    {
        if (Set.find(nums[node])!=Set.end()) return;        
        Set.insert(nums[node]);
        for (int child: children[node])
            dfs(child, nums);
    }
};


$0
endsnippet
::::::::::::::
Tree/2003.Smallest-Missing-Genetic-Value-in-Each-Subtree/2003.Smallest-Missing-Genetic-Value-in-Each-Subtree_v2.cpp
::::::::::::::
snippet Smallest-Missing-Genetic-Value-in-Each-Subtree "Smallest-Missing-Genetic-Value-in-Each-Subtree" b
class Solution {
    vector<int>children[100005];
    int setIdx[100005];
    vector<int>rets;   
    vector<unordered_set<int>>setList; 
    vector<int>nums;
public:
    vector<int> smallestMissingValueSubtree(vector<int>& parents, vector<int>& nums) 
    {
        this->nums = nums;
        int n = parents.size();
        for (int i=1; i<n; i++)        
            children[parents[i]].push_back(i);

        rets.resize(n);
        dfs(0);
        return rets;
    }

    void dfs(int node)
    {
        if (children[node].empty())
        {
            setIdx[node] = setList.size();
            setList.push_back({nums[node]});
            rets[node] = nums[node]==1?2:1;     

            cout<<node<<":"<<setIdx[node]<<" "<<setList[setIdx[node]].size()<<endl;       
        }
        else
        {   
            for (int child: children[node])
                dfs(child);

            int maxSetSize = 0;
            int maxSetIdx;
            for (int child: children[node])
            {
                if (setList[setIdx[child]].size() > maxSetSize)
                {
                    maxSetSize = setList[setIdx[child]].size();
                    maxSetIdx = setIdx[child];
                }
            }

            for (int child: children[node])
            {
                if (setIdx[child] == maxSetIdx) continue;
                for (int x: setList[setIdx[child]])
                    setList[maxSetIdx].insert(x);
            }
            setList[maxSetIdx].insert(nums[node]);
            setIdx[node] = maxSetIdx;

            int maxMissing = 0;            
            for (int child: children[node])            
                maxMissing = max(maxMissing, rets[child]);
            int x = maxMissing;
            while (setList[maxSetIdx].find(x)!=setList[maxSetIdx].end())
                x++;
            rets[node] = x;
        }

    }
};


$0
endsnippet
::::::::::::::
Tree/2003.Smallest-Missing-Genetic-Value-in-Each-Subtree/Readme.md
::::::::::::::
snippet Smallest-Missing-Genetic-Value-in-Each-Subtree "Smallest-Missing-Genetic-Value-in-Each-Subtree" b
### 2003.Smallest-Missing-Genetic-Value-in-Each-Subtree

#### 解法1：贪心
我们考察数值为1的节点记做node。显然对于node的所有子节点，他们的subtree都不会包含1，故1显然就是它们的smallest missing value. 此外，对于node到root的这一条支路而言，其中所有的节点的其他分支，也都不会包含元素1，故它们的smallest missing value也都是1. 于是我们发现，我们要处理的其实就只剩下node到root这一条单链上的节点。

对于这些节点，我们只需要从下往上依次处理即可。每往上走一层，就收集相应分支的节点数值，放在同一个集合里统计smallest missing value。注意到，从下往上的过程中，smallest missing value一定是递增的，所以对所有的节点，我们只要单调递增地去检查答案是什么即可。

#### 解法2：启发式合并集合
更为直观地解题方法是，自下而上维护每个substree所包含元素的集合，然后在这个集合中寻找smallest missing value.这里有两处可以优化的策略。

首先，任一个subtree的根节点node的子元素集合，是来自于所有子节点的元素的合并（再加上node本身的元素）。这里就涉及大量元素的拷贝。事实上，为了减少拷贝量，我们可以将node元素集合“指向”它所有孩子里元素集合最大的那一个（记做s），也就是说，我们只需要以s为基础，加入它的兄弟节点的元素集合，再加上node本身的元素，就直接用来作为node的元素集合。根据这种算法，我们事实上只给所有的叶子节点真正地开辟了集合，而所有非叶子节点的元素集合，都只是借用了它的某一个叶子节点的元素的地址而已。随着层级从下往上，我们会逐渐把所有节点元素都往某一个叶子节点的元素集合里放置。总体的时间复杂度是NlogN.

其次，我们已经有某个subtree的根节点node的子元素集合，那么如何确定它的smallest missing value呢？我们不需要从1开始检查。我们可以从它的孩子节点的smallest missing value里找一个最大值T，从这个值开始逐一递增检查直至找到答案。这是因为元素1到元素T-1一定都会在node的元素集合里。


$0
endsnippet
::::::::::::::
Tree/2049.Count-Nodes-With-the-Highest-Score/2049.Count-Nodes-With-the-Highest-Score.cpp
::::::::::::::
snippet Count-Nodes-With-the-Highest-Score "Count-Nodes-With-the-Highest-Score" b
using LL = long long;
class Solution {
    unordered_map<LL,LL>Map;
    vector<vector<int>>children;
public:
    int countHighestScoreNodes(vector<int>& parents) 
    {
        int n = parents.size();
        children.resize(n);
        for (int i=1; i<n; i++)
        {           
            children[parents[i]].push_back(i);
        }
                
        dfs(0);
        
        LL maxVal = -1;
        LL num = 0;
        for (auto x: Map)
        {
            if (x.first > maxVal)
            {
                maxVal = x.first;
                num = x.second;
            }
        }
        
        return num;
    }
    
    int dfs(int node)
    {
        int n = children.size();
        vector<int>sub;
        int sub_total = 0;
        for (auto child: children[node])
        {
            sub.push_back(dfs(child));
            sub_total += sub.back();
        }        
        int U = n - (sub_total+1);
        LL ret = 1;
        if (U!=0) ret *= U;
        for (auto x: sub)
            if (x!=0) ret *= x;
        Map[ret]++;
        
        return sub_total+1;
    }
};


$0
endsnippet
::::::::::::::
Tree/2049.Count-Nodes-With-the-Highest-Score/Readme.md
::::::::::::::
snippet Count-Nodes-With-the-Highest-Score "Count-Nodes-With-the-Highest-Score" b
### 2049.Count-Nodes-With-the-Highest-Score

本题本质只要设计一个递归函数dfs(node)来计算以node为跟的子树包含的元素个数即可。这样的话，如果删除掉node节点本身，那么剩下的三部分就是```dfs(node->left), dfs(node->right), n - 1 - dfs(node->left) - dfs(node->right)```. 只要把这三部分的非零元素相乘，就是一个score。所以在dfs(node)的同时，就可以把对应的score算出来。而实现整棵树的dfs，只要o(n)时间，均摊起来每个节点只需要o(1)。


$0
endsnippet
::::::::::::::
Tree/2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another/2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another.cpp
::::::::::::::
snippet Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another "Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
public:
    string getDirections(TreeNode* root, int startValue, int destValue) 
    {
        string dirs1, dirs2;
        dfs(root, dirs1, startValue);
        dfs(root, dirs2, destValue);
        
        int k = 0;
        while (k<dirs1.size() && k<dirs2.size() && dirs1[k]==dirs2[k])
            k++;
        for (int i=k; i<dirs1.size(); i++)
            dirs1[i] = 'U';
        return dirs1.substr(k)+dirs2.substr(k);
    }
    
    bool dfs(TreeNode* node, string& dirs, int target)
    {
        if (node==NULL) return false;
        if (node->val == target) return true;
        
        if (node->left)
        {
            dirs.push_back('L');
            if (dfs(node->left, dirs, target))
                return true;
            dirs.pop_back();
        }
        if (node->right)
        {
            dirs.push_back('R');
            if (dfs(node->right, dirs, target))
                return true;
            dirs.pop_back();
        }
        return false;
    }
};


$0
endsnippet
::::::::::::::
Tree/2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another/2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another_v2.cpp
::::::::::::::
snippet Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another "Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
public:
    string getDirections(TreeNode* root, int startValue, int destValue) 
    {
        vector<int>nums1, nums2;
        string dirs1, dirs2;
        dfs(root, nums1, dirs1, startValue);
        dfs(root, nums2, dirs2, destValue);
        
        // nums1: 0-1-3;  nums2: 0-2-6
        // dirs1: L-U-U;  dirs2: R-R-L
        int k = 0;
        while (k<nums1.size() && k<nums2.size() && nums1[k]==nums2[k])
            k++;
        for (int i=k; i<dirs1.size(); i++)
            dirs1[i] = 'U';
        return dirs1.substr(k)+dirs2.substr(k);
    }
    
    bool dfs(TreeNode* node, vector<int>&nums, string& dirs, int target)
    {
        if (node==NULL) return false;
        if (node->val == target) return true;
        
        if (node->left)
        {
            nums.push_back(node->left->val);
            dirs.push_back('L');
            if (dfs(node->left, nums, dirs, target))
                return true;
            nums.pop_back();
            dirs.pop_back();
        }
        if (node->right)
        {
            nums.push_back(node->right->val);
            dirs.push_back('R');
            if (dfs(node->right, nums, dirs, target))
                return true;
            nums.pop_back();
            dirs.pop_back();
        }
        return false;
    }
};


$0
endsnippet
::::::::::::::
Tree/2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another/Readme.md
::::::::::::::
snippet Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another "Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another" b
### 2096.Step-By-Step-Directions-From-a-Binary-Tree-Node-to-Another

本题和以往求LCA的题目不同。以往的LCA只需要求得LCA的节点本身，而这道题需要设计到路径打印。因此我们就老老实实地用递归的方法，把从root到q或者q的路径先记录出来，然后再比较得到LCA的位置。

此题中我们需要记录从root到p（或者q）一路上的操作（L或者R）。假设两条路径dirs1和dirs2在第k个节点位置分叉（也就是LCA的位置）。根据题意，我们就将dirs1[k:]全部搞成“U”（因为从p到LCA一路都是up），再拼接上dirs2[k:]这段路径即可。


$0
endsnippet
::::::::::::::
Tree/222.Count-Complete-Tree-Nodes/222.Count-Complete-Tree-Nodes_v1.cpp
::::::::::::::
snippet Count-Complete-Tree-Nodes "Count-Complete-Tree-Nodes" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    int countNodes(TreeNode* root) 
    {
        int h = 0;
        TreeNode* node = root;
        while (node!=NULL)
        {
            h++;
            node = node->left;            
        }
        int low = (1<<(h-1));
        int hi = (1<<h)-1;
        
        while (low<hi)
        {
            int mid = low+(hi-low+1)/2;
            if (hasK(root,mid))
                low = mid;
            else
                hi = mid-1;
        }
        return low;
    }
    
    bool hasK(TreeNode* root, int K)
    {
        vector<int>path;
        while (K>0)
        {
            path.push_back(K);
            K = K/2;
        }
        for (int i=path.size()-1; i>=0; i--)
        {
            if (root==NULL) return false;
            if (i==0) return true;
            if (path[i-1]==path[i]*2)
                root = root->left;
            else
                root = root->right;            
        }
        return true;
    }
};


$0
endsnippet
::::::::::::::
Tree/222.Count-Complete-Tree-Nodes/222.Count-Complete-Tree-Nodes_v2.cpp
::::::::::::::
snippet Count-Complete-Tree-Nodes "Count-Complete-Tree-Nodes" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    int countNodes(TreeNode* root) 
    {
        if (root==NULL) return 0;
        
        int ret = 1;        
        int h1 = findLeftDepth(root->left);
        int h2 = findRightDepth(root->left);
        int h3 = findLeftDepth(root->right);
        int h4 = findRightDepth(root->right);
        
        if (h1==h2)
        {
            ret += pow(2,h1)-1;
            return ret+countNodes(root->right);
        }           
        else 
        {
            ret += pow(2,h3)-1;
            return ret+countNodes(root->left);            
        }            
    }
    
    int findLeftDepth(TreeNode* node)
    {
        int count = 0;
        while (node!=NULL)
        {
            count++;
            node=node->left;
        }        
        return count;
    }
    
    int findRightDepth(TreeNode* node)
    {
        int count = 0;
        while (node!=NULL)
        {
            count++;
            node=node->right;
        }        
        return count;
    }
};


$0
endsnippet
::::::::::::::
Tree/222.Count-Complete-Tree-Nodes/Readme.md
::::::::::::::
snippet Count-Complete-Tree-Nodes "Count-Complete-Tree-Nodes" b
### 222.Count-Complete-Tree-Nodes

#### 解法1：二分搜索
先写一个辅助函数```bool hasK(TreeNode* root, int K)```，表示判断在一个完全二叉树里面是否存在第k号节点。这里，对于完全二叉树节点的编号规则，是按照层级遍历的顺序（如题目的图例）。hasK函数的算法思想是：对于任何编号为K的节点，我们都可以写出它从下往上（直至root）的path（就是将K不断除以2）。然后将这个path逆向，起点变成从root开始从上往下遍历，就可以查看是否能抵达编号为K的节点。

有了这个辅助函数，我们就可以利用二分搜索的思想，猜测二叉树里面是否存在编号为K的节点。如果存在，那么说明总节点数可以大于等于K；如果不存在，那么说明总节点数一定小于K。不断调整搜索范围直至收敛。

#### 解法2：
需要观察得到如下的重要性质：对于一个完全二叉树，root的左子树和右子树里面，必然有一个是满二叉树。

对于高度为h的满二叉树，其节点个数可以直接计算为2^h-1。所以我们对于root，先判断左子树是否是一个满二叉树。如果不是的话，递归处理左子树，否则就递归处理右子树。如何判断一棵树是否为满二叉树呢？只要递归计算它的左深度和有深度，查看两者是否相等就行了。

这个总算法复杂度是logN\*logN。可以这么考虑：每次计算满二叉树的高度需要o(logN)，不停二分递归处理非满二叉树又需要o(logN)次。

#### 解法3：
对于每一棵子树，只要考察它左子树的“左深度”h1、右子树的“左深度”h2.如果二者相等，那么递归处理右子树，即```count(node) = 2^h1-1+1+count(node->right)```，否则就递归处理左子树```count(node) = 2^h2-1+1+count(node->left)```


[Leetcode Link](https://leetcode.com/problems/count-complete-tree-nodes)


$0
endsnippet
::::::::::::::
Tree/226.Invert-Binary-Tree/226.Invert Binary Tree.cpp
::::::::::::::
snippet Invert-Binary-Tree "Invert-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* invertTree(TreeNode* root) 
    {
        if (root==NULL) return NULL;
        TreeNode* temp=invertTree(root->right);
        root->right=invertTree(root->left);
        root->left=temp;
        return root;
    }
};


$0
endsnippet
::::::::::::::
Tree/226.Invert-Binary-Tree/226.Invert Binary Tree_s2.cpp
::::::::::::::
snippet Invert-Binary-Tree "Invert-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* invertTree(TreeNode* root) 
    {
        if (root==NULL) return NULL;
        
        swap(root->left,root->right);
        
        root->left = invertTree(root->left);
        root->right = invertTree(root->right);
        
        return root;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/226.Invert-Binary-Tree/Readme.md
::::::::::::::
snippet Invert-Binary-Tree "Invert-Binary-Tree" b
### 226.Invert-Binary-Tree

本题有两种做法。常规的递归想法是：
```
root->left=invert(root->right);
root->right=invert(root->left);
```
但注意上述的写法是有问题的，因为第一行里已经把root->left改变了，所以第二行就不成立了。所以应该用temp把invert(root->right)存起来，之后再传给root->left.

另外一种就很巧妙：
```
swap(root->left,root->right);
root->left=invert(root->left);
root->right=invert(root->right);
```
注意代码第一行，作用是把整个根节点的左右子树都整体对换了。


[Leetcode Link](https://leetcode.com/problems/invert-binary-tree)

$0
endsnippet
::::::::::::::
Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree/235.Lowest Common Ancestor of a Binary Search Tree.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree "Lowest-Common-Ancestor-of-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) 
    {
        
        if ((p->val-root->val)*(q->val-root->val)<=0) return root;
        
        if ((p->val>root->val)&&(q->val>root->val)) return lowestCommonAncestor(root->right,p,q);
        if ((p->val<root->val)&&(q->val<root->val)) return lowestCommonAncestor(root->left,p,q);
    }
};


$0
endsnippet
::::::::::::::
Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree_v1.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree "Lowest-Common-Ancestor-of-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) 
    {
        vector<TreeNode*>P;
        vector<TreeNode*>Q;
        bool temp;
        temp = DFS(root,p,P);
        temp = DFS(root,q,Q);
        
        TreeNode* result;
        int i=P.size()-1;
        int j=Q.size()-1;
        while (i>=0 && j>=0 && P[i]==Q[j])
        {
            result=P[i];
            i--;
            j--;
        }
        return result;
    }
    
    bool DFS(TreeNode* root, TreeNode* r, vector<TreeNode*>& R)
    {
        if (root==NULL) return false;
        if (root==r || DFS(root->left,r,R) || DFS(root->right,r,R)) 
        {
            R.push_back(root);
            return true;
        }
        else
            return false;
    }
};


$0
endsnippet
::::::::::::::
Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree_v2.cpp
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree "Lowest-Common-Ancestor-of-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    TreeNode* ret = NULL;
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) 
    {
        dfs(root, p, q);
        return ret;
    }
    
    int dfs(TreeNode* node, TreeNode* p, TreeNode* q) 
    {
        if (node==NULL) return 0;
        int count = dfs(node->left, p, q) + dfs(node->right, p, q);
        if (node==p || node==q) count++;        
        if (count == 2 && ret == NULL)
            ret = node;
        return count;        
    }
};


$0
endsnippet
::::::::::::::
Tree/236.Lowest-Common-Ancestor-of-a-Binary-Tree/Readme.md
::::::::::::::
snippet Lowest-Common-Ancestor-of-a-Binary-Tree "Lowest-Common-Ancestor-of-a-Binary-Tree" b
### 235.Lowest-Common-Ancestor-of-a-Binary-Search-Tree

从根节点开始考察，如果p,q都比root小，则root移动至其左子树；否则，root移动至其右子树。直到发现p,q在root节点的两侧，则root是最低共同节点。

### 236.Lowest Common Ancestor of a Binary Tree

#### 解法1：找到各自完全的路径

和235不同，没有任何线索提示这两个节点的位置关系。所以只好用DFS搜索出抵达这两个节点的路径。通过路径的比较，找出共同的一段path，即可得出最低的公共节点。

DFS函数会一路向下层搜索直到发现节点p，然后在返回的过程中将路径所经过的所有节点存在数组P中。
```cpp
    bool DFS(TreeNode* node, TreeNode* p, vector<TreeNode*>&P)
    {
        if (node==NULL)
            return false;        
        
        if (node==p || DFS(node->left, p, P) || DFS(node->right, p, P))
        {
            P.push_back(node);
            return true;
        }
        else
            return false;
        
    }
```    
得到数组P和Q之后，只要从后往前比较两个数组，追踪它们相同的路径截止到哪一位为止就行了。

#### 解法2：递归

我们设计递归函数```int dfs(node)```表示node的子树里面包含了p和q中的几个？（可以是0,1,2）。显然，只有p和q的公共祖先节点，才会有该函数的返回值是2.

更特别地，因为递归是从下往上返回的。当我们第一次遇到某个节点的子树里同时包含p和q的节点，它必然就是p和q的最低公共祖先。

[Leetcode Link](https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-tree)


$0
endsnippet
::::::::::::::
Tree/255.Verify-Preorder-Sequence-in-Binary-Search-Tree/255.Verify Preorder Sequence in Binary Search Tree_DFS.cpp
::::::::::::::
snippet Verify-Preorder-Sequence-in-Binary-Search-Tree "Verify-Preorder-Sequence-in-Binary-Search-Tree" b
class Solution {
public:
    bool verifyPreorder(vector<int>& preorder) 
    {
        return DFS(preorder,0,preorder.size()-1);
    }
    
    bool DFS(vector<int>& preorder, int start, int end)
    {
        if (end-start<=1) return true;
        
        int root=preorder[start];
        int i = start+1;
        while (i<=end && preorder[i]<root) i++;
                
        for (int j=i; j<=end; j++)        
        {
            if (preorder[j]<=root) return false;
        }
        return DFS(preorder,start+1,i-1)&&DFS(preorder,i,end);
    }
};


$0
endsnippet
::::::::::::::
Tree/255.Verify-Preorder-Sequence-in-Binary-Search-Tree/255.Verify Preorder Sequence in Binary Search Tree_stack.cpp
::::::::::::::
snippet Verify-Preorder-Sequence-in-Binary-Search-Tree "Verify-Preorder-Sequence-in-Binary-Search-Tree" b
class Solution {
public:
    bool verifyPreorder(vector<int>& preorder) 
    {
        stack<int>Stack;
        int small=INT_MIN;
        for (int i=0; i<preorder.size(); i++)
        {
            if (preorder[i]<small) return false;
            
            while (!Stack.empty() && preorder[i]>Stack.top())
            {
                small=Stack.top();
                Stack.pop();
            }
            Stack.push(preorder[i]);              
        }
        return true;
    }
};


$0
endsnippet
::::::::::::::
Tree/255.Verify-Preorder-Sequence-in-Binary-Search-Tree/Readme.md
::::::::::::::
snippet Verify-Preorder-Sequence-in-Binary-Search-Tree "Verify-Preorder-Sequence-in-Binary-Search-Tree" b
### 255.Verify-Preorder-Sequence-in-Binary-Search-Tree

#### 解法1：常规的DFS

根据preorder的首元素（根节点）通过大小的比较，将后续元素分为属于其左子树和右子树的子区间，分别递归调用 
```cpp
bool DFS(vector<int>& preorder, int start, int end)。
```
边界条件：到end-start<=1时，就可以返回true

注意到，第一轮遍历判定完根的左子树/右子树的范围之后，还需要在第二轮对该左子树元素再做一回遍历来确定它的左子树/右子树范围。不断递归。每一轮/每一层都会要把所有序列都遍历一遍。考虑到会有log(n)层，此题需要o(NlogN)的时间复杂度。

#### 解法2：巧妙的o(n)解法

对于任意一个元素a，我们考虑以它为根的子树的序列表达，一定是类似```... {a[xxxxxx][yyyyyy]} ...```的形式。大括号内的是以a为根的子树的元素。我们可以知道x肯定都比a小，y肯定都比a大。那么y之后的元素呢？实际上它们肯定也会比a大。因为它们肯定是与a子树相对的右子树，或者a的更高层节点的某个右子树。因此，x之后的任何元素都应该比a大。

所以，我们遍历这个序列，一旦出现先后的两个元素满足 a<b（a和b不需要相邻），那么b之后出现的任何元素c必须要比a大，任何c<a的情况都是不合法的。

于是本题转化为：如何在遍历preorder的过程中，不断更新a<b，使得a不断得以抬升（即维护当前所有a<b配对中最大的a），一旦出现后续的c<a即可宣告false

怎么维护一个最新（尽量大）的a<b呢？那就是用栈来维护一个递减的序列。一旦遍历的过程中出现了```preOrder[i]>Stack.top()```，那就说明出现了递增序列，需要不断退栈直至保证栈本身仍然是递减的。在退栈的过程中，就不断遇到a<b的情况，借机可以抬高a。

[Leetcode Link](https://leetcode.com/problems/verify-preorder-sequence-in-binary-search-tree)


$0
endsnippet
::::::::::::::
Tree/270.Closest-Binary-Search-Tree-Value/270.Closest Binary Search Tree Value.cpp
::::::::::::::
snippet Closest-Binary-Search-Tree-Value "Closest-Binary-Search-Tree-Value" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    double closestValue(TreeNode* root, double target) 
    {

        
        if (root==NULL)
            return 0;
        
        double temp = root->val;        
        
       while (root!=NULL)
       {
           
           if (fabs(root->val-target) < fabs(temp-target))
                temp=root->val;
           
           if (root->val == target)
                return target;
           else if(root->val < target)
                root=root->right;
           else if(root->val > target)
                root=root->left;             
       }
       
       return temp;
    }
};


$0
endsnippet
::::::::::::::
Tree/270.Closest-Binary-Search-Tree-Value/Readme.md
::::::::::::::
snippet Closest-Binary-Search-Tree-Value "Closest-Binary-Search-Tree-Value" b
### 270.Closest-Binary-Search-Tree-Value
利用BST的性质不断朝target搜索，直至最底层。记录一路经过的根节点，不断更新 (root->val - target)的最小结果。

注意：result的初始值必须设置为root->val。


[Leetcode Link](https://leetcode.com/problems/closest-binary-search-tree-value)

$0
endsnippet
::::::::::::::
Tree/272.Closest-Binary-Search-Tree-Value-II/272.Closest Binary Search Tree Value II.cpp
::::::::::::::
snippet Closest-Binary-Search-Tree-Value-II "Closest-Binary-Search-Tree-Value-II" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> closestKValues(TreeNode* root, double target, int k) 
    {
        queue<int>q;
        
        DFS(root,q,target,k);
        
        vector<int>result;
        while (!q.empty())
        {
            result.push_back(q.front());
            q.pop();
        }
        return result;
    }
    
    void DFS(TreeNode* root, queue<int>&q, double target, int k)
    {
        if (root==NULL) return;
        
        DFS(root->left, q, target, k);
        
        if (q.size()<k)
        {
            q.push(root->val);
            DFS(root->right,q,target,k);
        }
        else
        {
            if (abs(q.front()-target)>abs(root->val-target))
            {
                q.push(root->val);
                q.pop();
                DFS(root->right,q,target,k);
            }
            else
                return;
        }
        
    }
};


$0
endsnippet
::::::::::::::
Tree/272.Closest-Binary-Search-Tree-Value-II/Readme.md
::::::::::::::
snippet Closest-Binary-Search-Tree-Value-II "Closest-Binary-Search-Tree-Value-II" b
### 272.Closest-Binary-Search-Tree-Value-II

构造一个队列。按中序遍历递归这个数组，不断将访问的节点加入这个队列。当加入的元素与target的差距大于队首元素与target的差距，即可停止。


[Leetcode Link](https://leetcode.com/problems/closest-binary-search-tree-value-ii)

$0
endsnippet
::::::::::::::
Tree/285.Inorder-Successor-in-BST/285.Inorder Successor in BST.cpp
::::::::::::::
snippet Inorder-Successor-in-BST "Inorder-Successor-in-BST" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    TreeNode* lastRead=NULL;
    TreeNode* result=NULL;
public:
    TreeNode* inorderSuccessor(TreeNode* root, TreeNode* p) 
    {
        bool flag = DFS(root,p);
        return result;
    }
    
    bool DFS(TreeNode* node, TreeNode* p)
    {
        if (node==NULL) return false;
        
        if (DFS(node->left,p)) return true;
        
        if (lastRead==p)
        {
            result=node;
            return true;
        }
        lastRead=node;
        
        if (DFS(node->right,p)) return true;
        
        return false;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/285.Inorder-Successor-in-BST/Readme.md
::::::::::::::
snippet Inorder-Successor-in-BST "Inorder-Successor-in-BST" b
### 285.Inorder-Successor-in-BST

很明显，基本思想就是对二叉树进行中序遍历，遍历到p后，输出它的下一个遍历对象。

因此，需要设置一个全局变量 TreeNode\* last 来存储最近读到的节点。在遍历的过程中，如果发现last==p，则当前读取的节点就是想要的东西；否则更新last为当前读取的节点。

我们首选比较清晰的递归法来遍历。注意，根据题目要求，这次我们需要给DFS设置一个返回值。初步的框架如下：
```cpp
    bool DFS(TreeNode* root, TreeNode* p)
    {
        if (root==NULL) return false;        
        
        if (DFS(root->left,p)) return true;   // 任务已经完成
        
        if (last==p) 
        {
            result=root;
            return true;    // 任务完成
        }
        else
            last=root;        
        
        if (DFS(root->right,p)) return true;
        
        return false;   // 任务未完成
    }
```


[Leetcode Link](https://leetcode.com/problems/inorder-successor-in-bst)

$0
endsnippet
::::::::::::::
Tree/297.Serialize-and-Deserialize-Binary-Tree/297.Serialize and Deserialize Binary Tree.cpp
::::::::::::::
snippet Serialize-and-Deserialize-Binary-Tree "Serialize-and-Deserialize-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Codec {
public:

    // Encodes a tree to a single string.
    string serialize(TreeNode* root) 
    {
        queue<TreeNode*>q;
        q.push(root);
        string ret;
        while (!q.empty())
        {
            TreeNode* node = q.front();
            q.pop();
            if (node!=NULL)
            {
                ret+=to_string(node->val)+",";
                q.push(node->left);
                q.push(node->right);
            }
            else
                ret+="#,";
        }
        return ret;
    }

    // Decodes your encoded data to tree.
    TreeNode* deserialize(string data) 
    {
        vector<TreeNode*>nodes;
        for (int i=0; i<data.size(); i++)
        {
            int j = i;
            while (j<data.size() && data[j]!=',')
                j++;
            string str = data.substr(i,j-i);
            if (str=="#")
                nodes.push_back(NULL);
            else
                nodes.push_back(new TreeNode(stoi(str)));
            i = j;
        }

        int i = 0,  j = 1;
        while (j<nodes.size())
        {
            if (nodes[i]!=NULL)
            {
                nodes[i]->left = nodes[j];
                nodes[i]->right = nodes[j+1];
                j+=2;
            }
            i++;
        }
        return nodes[0];
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.deserialize(codec.serialize(root));


$0
endsnippet
::::::::::::::
Tree/297.Serialize-and-Deserialize-Binary-Tree/297.Serialize-and-Deserialize-Binary-Tree_v2.cpp
::::::::::::::
snippet Serialize-and-Deserialize-Binary-Tree "Serialize-and-Deserialize-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Codec {
public:

    // Encodes a tree to a single string.
    string serialize(TreeNode* root) 
    {
        if (root==NULL) return "#";
        else return to_string(root->val)+","+serialize(root->left)+","+serialize(root->right);        
    }

    // Decodes your encoded data to tree.
    TreeNode* deserialize(string data) 
    {
        vector<TreeNode*>nodes;
        for (int i=0; i<data.size(); i++)
        {
            int j = i;
            while (j<data.size() && data[j]!=',')
                j++;
            string str = data.substr(i,j-i);
            if (str=="#")
                nodes.push_back(NULL);
            else
                nodes.push_back(new TreeNode(stoi(str)));
            i = j;
        }

        return DFS(nodes, 0);
    }

    TreeNode* DFS(vector<TreeNode*>&nodes, int cur)
    {
        if (nodes[cur]==NULL) return NULL;

        TreeNode* left = DFS(nodes, cur+1);
        int leftSize = getNum(left);
        TreeNode* right = DFS(nodes, cur+leftSize+1);
        nodes[cur] -> left = left;
        nodes[cur] -> right = right;
        return nodes[cur];
    }

    int getNum(TreeNode* node)
    {
        if (node==NULL) return 1;
        else return getNum(node->left)+getNum(node->right)+1;
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.deserialize(codec.serialize(root));

// 1,[2,#,#],[3,4,#,#,5,#,#],


$0
endsnippet
::::::::::::::
Tree/297.Serialize-and-Deserialize-Binary-Tree/297.Serialize-and-Deserialize-Binary-Tree_v3.cpp
::::::::::::::
snippet Serialize-and-Deserialize-Binary-Tree "Serialize-and-Deserialize-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Codec {
public:

    // Encodes a tree to a single string.
    string serialize(TreeNode* root) 
    {
        if (root==NULL) return "#";
        return to_string(root->val)+","+serialize(root->left)+","+serialize(root->right);        
    }

    // Decodes your encoded data to tree.
    TreeNode* deserialize(string data) 
    {
        cout<<data<<endl;
        queue<string>q;
        for (int i=0; i<data.size(); i++)
        {
            int j=i;
            while (j<data.size() && data[j]!=',')
                j++;
            q.push(data.substr(i,j-i));
            i=j;
        }
        return DFS(q);
    }
    
    TreeNode* DFS(queue<string>&q)
    {
        string cur = q.front();
        q.pop();
        
        if (cur=="#") return NULL;
        TreeNode* root = new TreeNode(stoi(cur));
        
        TreeNode* left = DFS(q);        
        TreeNode* right = DFS(q);
        root->left = left;
        root->right = right;
        return root;
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.deserialize(codec.serialize(root));


$0
endsnippet
::::::::::::::
Tree/297.Serialize-and-Deserialize-Binary-Tree/Readme.md
::::::::::::::
snippet Serialize-and-Deserialize-Binary-Tree "Serialize-and-Deserialize-Binary-Tree" b
### 297.Serialize-and-Deserialize-Binary-Tree

#### 解法1：
##### 编码
本题按照leetcode介绍的编码方式。

构建队列，按照BFS逐层遍历二叉树，遇到非NULL节点就记录数值，遇到NULL就记录'#'，每个节点之间用','分开。遍历到队首的非NULL节点，其两个子节点都会加入队列；对于队首的NULL节点，则跳过不加入元素。

整个编码过程和BFS遍历过程没有太大区别。


##### 解码
解码的时候，先将整个编码字符串根据,分隔,构建一个指针数组，每个数组元素对应一个节点指针，这和编码过程中的队列类似。

设置初始指针i=0表示当前父节点,j=1表示当前子节点。

对于父节点q[i],对应的两个子节点必为q[j]和q[j+1]，此时只要将q[i]的left和right分别指向它们(即j和j+1)即完成了父子关系的构建． 注意此时如果q[i]为空,根据编码原则说明q里面并没有子节点被记录，故继续i++直到找到非NULL的节点，作为j和j+1的父节点。

技巧：
1. 把数字转化为字符串 to_string(num) 会自动处理负号
1. 把字符串转化为数字 stoi(str) 也会自动处理负号


#### 解法2：
编码可以用preorder遍历的方法递归得到，代码非常简洁：
```cpp
    string serialize(TreeNode* root) 
    {
        if (root==NULL) return "#";
        return to_string(root->val)+","+serialize(root->left)+","+serialize(root->right);        
    }
```
得到的一定是唯一的序列字符串。

解码的时候首先将各个节点通过逗号的间隔抽取出来。重建的时候也是要设计递归。
```cpp
    TreeNode* DFS(vector<string>&q, int a)
    {
        if (q[a]=="#") return NULL;
        TreeNode* root = new TreeNode(stoi(q[a]));
        TreeNode* left = DFS(q,a+1);
        int leftSize = getSize(left);
        TreeNode* right = DFS(q,a+1+leftSize);        
        root->left = left;
        root->right = right;
        return root;
    }
```
需要额外一个getSize函数来计算这个子树共有多少个元素。或者在DFS的返回值里添加一个信息，表示该子树下的节点总数。

#### 解法3：
在解法2的基础上，有一个技巧可以避免额外调用getSize. 我们将所有节点都放入一个队列之中。每次的DFS其实都是从该队列中弹出首元素作为子树的根；然后构建左子树；再构建右子树。当我们试图构建右子树的时候，其实队列中的首元素就已经是右子树的根了。

[Leetcode Link](https://leetcode.com/problems/serialize-and-deserialize-binary-tree)


$0
endsnippet
::::::::::::::
Tree/298.Binary-Tree-Longest-Consecutive-Sequence/298.Binary Tree Longest Consecutive Sequence.cpp
::::::::::::::
snippet Binary-Tree-Longest-Consecutive-Sequence "Binary-Tree-Longest-Consecutive-Sequence" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    int result;
public:
    int longestConsecutive(TreeNode* root) 
    {
        result=0;
        int x=DFS(root);
        return result;
    }
    
    int DFS(TreeNode* root)
    {
        if (root==NULL) return 0;
        
        int res=1;
        if (root->left!=NULL)
        {
            int temp = DFS(root->left);
            if (root->left->val == root->val+1)
                res = max(res, temp+1);
        }
        
        if (root->right!=NULL)
        {
            int temp = DFS(root->right);
            if (root->right->val == root->val+1)
                res = max(res, temp+1);
        }
        
        result = max(res,result);
        return res;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/298.Binary-Tree-Longest-Consecutive-Sequence/Readme.md
::::::::::::::
snippet Binary-Tree-Longest-Consecutive-Sequence "Binary-Tree-Longest-Consecutive-Sequence" b
### 298.Binary-Tree-Longest-Consecutive Sequence

这是一道基本的用DFS递归的二叉树题。需要注意的细节是，对于左右子树的递归调用，需要在判断 root->val+1==root->left->val之前。

对于这样的调用是错误的：
```cpp
if (root->left!=NULL && root->val+1==root->left->val)
{
    res = max(res, DFS(root->left)+1);
}
```
因为这样的话，当左节点不是根节点的增1时，左节点将永远不会被调用DFS，这样的话，左子树可能有的最长增序列将不会被搜索到。
```cpp
if (root->left!=NULL)
{
    int temp = DFS(root->left);
    if (root->val+1==root->left->val)
      res = max(res, temp+1);
    
}
```


[Leetcode Link](https://leetcode.com/problems/binary-tree-longest-consecutive-sequence)

$0
endsnippet
::::::::::::::
Tree/331.Verify-Preorder-Serialization-of-a-Binary-Tree/331.Verify Preorder Serialization of a Binary Tree.cpp
::::::::::::::
snippet Verify-Preorder-Serialization-of-a-Binary-Tree "Verify-Preorder-Serialization-of-a-Binary-Tree" b
class Solution {
public:
    bool isValidSerialization(string preorder) 
    {

        int count=0;
        for (int i=0; i<preorder.size(); i++)
        {
            if (preorder[i]!=',' && preorder[i]!='#')
            {
                while (i<preorder.size() && preorder[i]!=',')
                    i++;
                count--;
            }
            else if (preorder[i]=='#')
            {
                count++;
                i++;
            }
            
            if (i<preorder.size()-1 && count>0) return false;
        }
        
        if (count!=1) return false;
        return true;
    }
};


$0
endsnippet
::::::::::::::
Tree/331.Verify-Preorder-Serialization-of-a-Binary-Tree/Readme.md
::::::::::::::
snippet Verify-Preorder-Serialization-of-a-Binary-Tree "Verify-Preorder-Serialization-of-a-Binary-Tree" b
### 331.Verify-Preorder-Serialization-of-a-Binary-Tree

此题用到了这么一个性质：对于满二叉树，所有节点的入度和出度之差为0. 

关于入度和出度，我们知道，根节点的净值是-2（两个出度），非叶子节点的净值是-1（一个入度两个出度），叶子节点的净值是1（一个入度零个出度）。在对先序遍历的过程中，我们只能区分叶子和非叶子节点，但是无法再细分是否是根节点。不过因为根节点只有一个，所以我们如果把根节点也当做一般的非叶子节点来处理的话，遍历所有节点之后的总净值应该是1。也就是说，如果我们按先序遍历所有节点，遇到非#节点就减一，遇到#节点就加一，最终的结果必须是1。

此外还有另外一个判定条件。在先序遍历的过程中，总有一些子二叉树是没有被完全遍历完的，也就是说，对于这些子二叉树，已经遍历的非叶子节点总比已经遍历的叶子节点多。所以按照上述的规则，遍历的过程中(不包括最后一个节点)，总净值不能大于0。注意，一旦把最后一个节点遍历完毕，根据上一个结论，总净值必须是1。


[Leetcode Link](https://leetcode.com/problems/verify-preorder-serialization-of-a-binary-tree)

$0
endsnippet
::::::::::::::
Tree/333.Largest-BST-Subtree/333.Largest BST Subtree.cpp
::::::::::::::
snippet Largest-BST-Subtree "Largest-BST-Subtree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    int result=0;
    
public:
    int largestBSTSubtree(TreeNode* root) 
    {
        int x = isBST(root);
        return result;
    }
    
    int isBST(TreeNode* root) 
    {
        if (root==NULL) return 0;
        
        int flag=1;
        
        if (root->left!=NULL)
        {
            TreeNode* node=root->left;
            while (node->right!=NULL) node=node->right;
            if (node->val>=root->val)
                flag=0;
        }
        
        if (root->right!=NULL)
        {
            TreeNode* node=root->right;
            while (node->left!=NULL) node=node->left;
            if (node->val<=root->val)
                flag=0;
        }        
        
        int leftNum = isBST(root->left);
        int rightNum = isBST(root->right);
        
        if (flag==0 || leftNum==-1 || rightNum==-1) return -1;
        
        result=max(result,leftNum+rightNum+1);
        
        return leftNum+rightNum+1;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/333.Largest-BST-Subtree/Readme.md
::::::::::::::
snippet Largest-BST-Subtree "Largest-BST-Subtree" b
### 333.Largest-BST-Subtree

首先，看清题意，A subtree must include all of its descendants.

要判断一个root是否代表了一颗BST，有三个条件：    
1. 其左子树也是BST（或者NULL）
2. 其右子树也是BST（或者NULL）
3. 其根节点小于左子树的最大值，并且根节点大于右子树的最小值。

接下来，考虑这个问题其实包括了两个任务：判断BST，以及它有多少个节点数目。怎么合并一起写这个DFS(root)递归函数呢？很容易想到这样的设计：当root是BST时返回其包含的节点数目，当root不是BST时则返回-1. 这个-1的返回值可以帮助上一级的根节点确定非BST，一举两得。

首先,边界条件：if (root==NULL) return 0. 认为是BST，但节点数目为0。

其次，对于非NULL的节点，我们就可以放心地为左右子树分别递归调用了
```cpp
int leftNum = DFS(root->left);
int rightNum = DFS(root->right);
```
leftNum和rightNum有任何一个为-1，都表明root都不是BST。

此外，判断root为BST的第三个条件，等价于这样的操作：将左子树的右下节点与根节点比较、右子树的左下节点与根节点比较。设计一个while语句就可以迅速定位所需要的边界节点。

以上三个条件都判断后，如果root不是BST，返回-1；如果是BST，返回leftNum+rightNum+1.


[Leetcode Link](https://leetcode.com/problems/largest-bst-subtree)

$0
endsnippet
::::::::::::::
Tree/428.Serialize-and-Deserialize-N-ary-Tree/428.Serialize-and-Deserialize-N-ary-Tree.cpp
::::::::::::::
snippet Serialize-and-Deserialize-N-ary-Tree "Serialize-and-Deserialize-N-ary-Tree" b
/*
// Definition for a Node.
class Node {
public:
    int val;
    vector<Node*> children;

    Node() {}

    Node(int _val) {
        val = _val;
    }

    Node(int _val, vector<Node*> _children) {
        val = _val;
        children = _children;
    }
};
*/

class Codec {
public:
    // Encodes a tree to a single string.
    string serialize(Node* root) 
    {        
        if (root==NULL) return "#";
        string ret = to_string(root->val) + ":" + to_string(root->children.size()) + ",";
        for (int i=0; i<root->children.size(); i++)
            ret += serialize(root->children[i]) + ",";
        ret.pop_back();
        return ret;        
    }
	
    // Decodes your encoded data to tree.
    Node* deserialize(string data) 
    {
        if (data=="#") return NULL;
        vector<Node*>nodes;
        for (int i=0; i<data.size(); i++)
        {
            int j = i;
            while (j<data.size() && data[j]!=',')
                j++;
            string str = data.substr(i,j-i);
            int pos = str.find(":");
            Node* node = new Node(stoi(str.substr(0,pos)));
            node->children.resize(stoi(str.substr(pos+1)));                
            nodes.push_back(node);
            i = j;
        }

        return dfs(nodes, 0);   
    }
    
    Node* dfs(vector<Node*>&nodes, int cur)
    {
        int start = cur+1;
        for (int i=0; i<(nodes[cur]->children.size()); i++)
        {
            nodes[cur]->children[i] = dfs(nodes, start);
            start += getSize(nodes[cur]->children[i]);
        }
        return nodes[cur];
    }
    
    int getSize(Node* node)
    {
        if (node==NULL) return 0;
        int count = 1;
        for (int i=0; i<node->children.size(); i++)
            count += getSize(node->children[i]);
        return count;
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.deserialize(codec.serialize(root));


$0
endsnippet
::::::::::::::
Tree/428.Serialize-and-Deserialize-N-ary-Tree/Readme.md
::::::::::::::
snippet Serialize-and-Deserialize-N-ary-Tree "Serialize-and-Deserialize-N-ary-Tree" b
### 428.Serialize-and-Deserialize-N-ary-Tree

此题可以仿照```297.Serialize-and-Deserialize-Binary-Tree```中用先序遍历的思想来编码和解码。

在编码的过程中，我们对于每个节点要存储val之外，还需要存储有多少个child。第二个信息对于重构树的形状很重要，而且它还可以帮助我们在encode时省去存储空的叶子节点。

decode的具体算法：将编码分解为若干个节点（不存在空节点，因为编码的时候省去了）放在数组里。此时cur=0，调用递归函数dfs(cur)。因为数组的第一个元素cur必然就是根节点，我们可以获取```val```和它的孩子的数目```k```。然后我们循环k次，从数组的第cur+1个元素开始依次构建它的k个child节点。更具体地，我们构建了第一个子树dfs(cur+1)之后，数一下这个子树共有k1个元素，那么我们就从数组的第cur+k1+1个元素开始通过dfs(cur+k1+1)构建第二个子树；再数一下这个子树共有k2个元素，就调用dfs(cur+k1+k2+1)构建第三个子树...直至把cur的所有子树都构建完毕。


$0
endsnippet
::::::::::::::
Tree/431.Encode-N-ary-Tree-to-Binary-Tree/431.Encode-N-ary-Tree-to-Binary-Tree.cpp
::::::::::::::
snippet Encode-N-ary-Tree-to-Binary-Tree "Encode-N-ary-Tree-to-Binary-Tree" b
/*
// Definition for a Node.
class Node {
public:
    int val;
    vector<Node*> children;

    Node() {}

    Node(int _val) {
        val = _val;
    }

    Node(int _val, vector<Node*> _children) {
        val = _val;
        children = _children;
    }
};
*/

/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */

class Codec {
public:
    // Encodes an n-ary tree to a binary tree.
    TreeNode* encode(Node* root) 
    {
        if (root==NULL) return NULL;        
        TreeNode* node = new TreeNode(root->val);
        if (root->children.size()==0) return node;
        
        node->left = encode(root->children[0]);
        TreeNode* h = node->left;
        for (int i = 1; i< root->children.size(); i++)
        {
            h->right = encode(root->children[i]);
            h = h->right;
        }
        return node;        
    }
	
    // Decodes your binary tree to an n-ary tree.
    Node* decode(TreeNode* root) 
    {
        if (root==NULL) return NULL;        
        Node* node = new Node(root->val);
        if (root->left==NULL) return node;
        
        TreeNode* h = root->left;
        while (h)
        {
            node->children.push_back(decode(h));
            h = h->right;
        }
        return node;
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.decode(codec.encode(root));


$0
endsnippet
::::::::::::::
Tree/431.Encode-N-ary-Tree-to-Binary-Tree/Readme.md
::::::::::::::
snippet Encode-N-ary-Tree-to-Binary-Tree "Encode-N-ary-Tree-to-Binary-Tree" b
### 431.Encode-N-ary-Tree-to-Binary-Tree

此题的难点就是在于设计这样的方案：对于N叉树的任何一个节点，改造成二叉树节点之后，它的大孩子将作为它左节点，而二孩子将作为大孩子的右节点，三孩子将作为二孩子的右节点。也就是说，它的所有的孩子都将在它的左子树里，并沿着right arm一路向下。同理，它的孙子节点将会在儿子节点的左子树里。

在对一个二叉树节点进行decode的时候，我们需要找到它的所有children。那就先去它的左节点，然后沿着它的right arm一路向下，就收录了所有children。注意在收录这些children的过程之中，对每一个孩子都可以调用decode的过程来构建孩子下面的N叉树。



$0
endsnippet
::::::::::::::
Tree/437.Path-Sum-III/437.Path Sum III.cpp
::::::::::::::
snippet Path-Sum-III "Path-Sum-III" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    int count=0;
    
public:
    int pathSum(TreeNode* root, int sum) 
    {
        GoThrough(root,sum);
        return count;
    }
    
    void GoThrough(TreeNode *root,int sum)
    {
        if (root==NULL) return;
        
        GoThrough(root->left,sum);        
        GoThrough(root->right,sum);
        count+= pathSumNum(root,sum);        
    }
    
    int pathSumNum(TreeNode* node, int sum)
    {
        if (node==NULL) return 0;
        if (node->val==sum) 
            return 1+pathSumNum(node->left,0)+pathSumNum(node->right,0);
        else
            return pathSumNum(node->left,sum-node->val)+pathSumNum(node->right,sum-node->val);
    }
};


$0
endsnippet
::::::::::::::
Tree/437.Path-Sum-III/437.Path-Sum-III_v2.cpp
::::::::::::::
snippet Path-Sum-III "Path-Sum-III" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<int,int>Map;
    int count = 0;
public:
    int pathSum(TreeNode* root, int sum) 
    {
        if (root==NULL) return 0;
        Map[0]=1;
        DFS(root,0,sum);
        return count;
    }
    
    void DFS(TreeNode* node, int curSum, int target)
    {
        if (node==NULL) return;
        
        curSum+=node->val;        
        count+= Map[curSum-target];
        
        Map[curSum]+=1;               
        DFS(node->left,curSum,target);
        DFS(node->right,curSum,target);        
        Map[curSum]-=1;
                
        return;                    
    }
};


$0
endsnippet
::::::::::::::
Tree/437.Path-Sum-III/Readme.md
::::::::::::::
snippet Path-Sum-III "Path-Sum-III" b
### 437.Path-Sum-III

#### 方法1

此题是112,113的follow up。不要求path一定是从root到leaf。

在这种情况下，每个节点都有可能是path的起点。所以需要遍历树的所有节点，对每个节点都寻找pathSum(node,sum)。

另外，(root->val==sum)并不意味着path的终点，如果子树还有和为零的路径，也合题意。所以遇到这种情况，还要进一步加上左右子树路径和为0的子问题。
```cpp
    int pathSumNum(TreeNode* node, int sum)
    {
        if (node==NULL) return 0;
        if (node->val==sum) return 1+pathSumNum(node->left,0)+pathSumNum(node->right,0);
        return pathSumNum(node->left,sum-node->val)+pathSumNum(node->right,sum-node->val);
    }
```    

#### 方法2

突破点:任何一条从A点到B点的,和为sum的路径,可以等效为从root到B的路径和,减去root到A的路径和.

所以我们考察B点时,将此时从root到B的路径和curSum,减去target,查看这个差值是否存在一个Hash表中.这个Hash表存储的是从root到任何B以前的点的路径和.因此更新结果的计数器只需要```count+=Map[curSum-target]```

注意,这个DFS需要回溯.即向下递归时需要想Hash表中添加```Map[curSum]+=1```,而向上返回时需要删除这个记录即```Map[curSum]-=1```

此外,需要注意的边界条件是:在最初始需要设置```Map[0]=1```,即什么都不拿的话也算target==1的一种方法.上述的DFS依赖于这个边界条件.


[Leetcode Link](https://leetcode.com/problems/path-sum-iii)

$0
endsnippet
::::::::::::::
Tree/449.Serialize-and-Deserialize-BST/449.Serialize and Deserialize BST.cpp
::::::::::::::
snippet Serialize-and-Deserialize-BST "Serialize-and-Deserialize-BST" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Codec {
public:

    // Encodes a tree to a single string.
    string serialize(TreeNode* root) 
    {
        string s;
        DFS(root,s);
        cout<<s<<endl;
        return s;
    }

    // Decodes your encoded data to tree.
    TreeNode* deserialize(string data) 
    {
        if (data.size()==0) return NULL;
        vector<int>preorder;
        int i=0;
        while (i<data.size())
        {
            string s="";
            while (data[i]!=',')
            {
                s+=data[i];
                i++;
            }
            preorder.push_back(stoi(s));
            i++;
        }
        
        for (int i=0; i<preorder.size(); i++)
            cout<<preorder[i]<<" ";
        cout<<endl;
        
        TreeNode *root = DFS2(preorder,0,INT_MIN,INT_MAX);
        
        return root;
    }
    
private:
    void DFS(TreeNode* root, string& s)
    {
        if (root==NULL) return;
        
        s+=to_string(root->val)+',';
        DFS(root->left,s);
        DFS(root->right,s);
    }
    
    TreeNode* DFS2(vector<int>& preorder,int curIdx, int MIN, int MAX)
    {
        if (curIdx>=preorder.size()) return NULL;
        
        if (preorder[curIdx]<MIN || preorder[curIdx]>MAX)
            return DFS2(preorder, curIdx+1, MIN, MAX);
        
        TreeNode* root = new TreeNode(preorder[curIdx]);
        root->left = DFS2(preorder,curIdx+1,MIN,root->val);
        root->right = DFS2(preorder,curIdx+1,root->val,MAX); 
        
        return root;
    }
};

// Your Codec object will be instantiated and called as such:
// Codec codec;
// codec.deserialize(codec.serialize(root));


$0
endsnippet
::::::::::::::
Tree/449.Serialize-and-Deserialize-BST/Readme.md
::::::::::::::
snippet Serialize-and-Deserialize-BST "Serialize-and-Deserialize-BST" b
### 449.Serialize-and-Deserialize-BST

此题是297.Serialize and Deserialize Binary Tree的扩展。对于任意的二叉树，仅根据一种遍历无法还原这课树，一般需要两种遍历序列，或者是level order加上NULL节点的信息。

但对于BST，它有一个非常好的性质，就是仅用其先序遍历就可逆！

一种直观的想法就是，根据“先序遍历的首元素是根节点”，通过逐个大小比较，将之后的元素分为左子树和右子树两部分，分别递归构建左子树和右子树。这种方法会对同一个元素多次进行比较，需要o(n^2)的时间，太慢。（参考255.Verify Preorder Sequence in Binary Search Tree）

比较巧妙的DFS解法，是根据首元素（根节点）来更新之后左右子树的上下限。构造DFS函数
```
    TreeNode* DFS2(vector<int>& preorder,int curIdx, int MIN, int MAX)
    {
        if (curIdx>=preorder.size()) return NULL;
        
        if (preorder[curIdx]<MIN || preorder[curIdx]>MAX)
            return DFS2(preorder, curIdx+1, MIN, MAX);
        
        TreeNode* root = new TreeNode(preorder[curIdx]);
        root->left = DFS2(preorder,curIdx+1,MIN,root->val);
        root->right = DFS2(preorder,curIdx+1,root->val,MAX); 
        
        return root;
    }
```
每次DFS都推进一位（curIdx）。如果preorder[curIdx]不合当前上下限的，就不理会，继续往后面的元素找；如果符合当前上下限，那么说明preorder[curIdx]本身就适合当一个根节点，其左右子树必定在之后的元素里，于是推进一位递归调用DFS，只要合理更新上下限即可。



[Leetcode Link](https://leetcode.com/problems/serialize-and-deserialize-bst)

$0
endsnippet
::::::::::::::
Tree/450.Delete-Node-in-a-BST/450.Delete Node in a BST.cpp
::::::::::::::
snippet Delete-Node-in-a-BST "Delete-Node-in-a-BST" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* deleteNode(TreeNode* root, int key) 
    {
        if (root==NULL) return NULL;
        
        if (root->val!=key)
        {
            if (key < root->val) 
                root->left = deleteNode(root->left,key);
            else
                root->right = deleteNode(root->right,key);
        }
        else
        {
            if (root->left==NULL && root->right==NULL)
                return NULL;
            else if (root->left==NULL)
                return root->right;
            else if (root->right==NULL)
                return root->left;    
            else
            {
                TreeNode* node=root->right;
                while (node->left!=NULL)
                    node = node->left;
                root->val = node->val;
                root->right = deleteNode(root->right,node->val);
            }
        }
        return root;
    }
    
    
};


$0
endsnippet
::::::::::::::
Tree/450.Delete-Node-in-a-BST/450.Delete-Node-in-a-BST_s2.cpp
::::::::::::::
snippet Delete-Node-in-a-BST "Delete-Node-in-a-BST" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    TreeNode* deleteNode(TreeNode* root, int key) 
	{
        if (root==NULL) return NULL;
        
        if (root->val<key)
	{
		root->right = deleteNode(root->right,key);
		return root;
	}
	else if (root->val>key)
	{
		root->left = deleteNode(root->left,key);
		return root;
	}
	else if (root->val==key)
	{
           	if (root->right==NULL)
                	return root->left;				
		else
            	{
                	TreeNode* node=root->right;
                	while (node->left!=NULL)
                    		node = node->left;
                	root->val=node->val;
                	root->right = deleteNode(root->right,node->val);
                	return root;
            	}
	}
    }
};


$0
endsnippet
::::::::::::::
Tree/450.Delete-Node-in-a-BST/Readme.md
::::::::::::::
snippet Delete-Node-in-a-BST "Delete-Node-in-a-BST" b
### 450.Delete-Node-in-a-BST

1. 寻找要被删除的节点时，不着急利用BST的性质一下子循着key找出来，想办法用递归的形式去做。
```cpp
  if (key < root->val) 
  {
    root->left = deleteNode(root->left,key);
    return root;
  }
  else if (key > root->val) 
  {
    root->right = deleteNode(root->right,key);
    return root;
   }
```
2. 找到要被删除的节点时，一个非常迫切的问题是：如果把这个root删了，我应该把大于这个root的节点替代上去（以维持BST的性质）。但是这样又会造成右子树的结构变化，这种变化有可能很复杂。不着急，我们还是想办法搞成递归。我们不需要“删除”这个root，仅把root->val替换成仅大于root的那个节点（假设为node）的权值就可以了。那么右子树需要做什么变化呢？那就是在右子树中删除node（此时整棵树中相当于有两个node），这恰恰就是重复利用了deleteNode()函数的作用。
```cpp
else if (root->val==key)
{
	if (root->right==NULL)
        	return root->left;				
	else
    	{
        	TreeNode* node=root->right;
         	while (node->left!=NULL)
               		node = node->left;  // 找到那个仅大于root的那个节点node
         	root->val=node->val; // 替换root->val
         	root->right = deleteNode(root->right,node->val); // 递归处理右子树
         	return root;
    	}
}
```                


[Leetcode Link](https://leetcode.com/problems/delete-node-in-a-bst)

$0
endsnippet
::::::::::::::
Tree/501.Find-Mode-in-Binary-Search-Tree/501.Find-Mode-in-Binary-Search-Tree.cpp
::::::::::::::
snippet Find-Mode-in-Binary-Search-Tree "Find-Mode-in-Binary-Search-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    int maxFreq=0;
    int currentFreq=0;
    int prev;
    vector<int>results;
public:
    vector<int> findMode(TreeNode* root) 
    {
        DFS(root);
        return results;
    }
    
    void DFS(TreeNode* root)
    {
        if (root==NULL) return;
        
        DFS(root->left);
        
        if (maxFreq==0)
        {
            maxFreq=1;
            currentFreq=1;
            prev=root->val;
            results.push_back(root->val);
        }
        else
        {
            if (root->val==prev)
            {
                prev=root->val;
                currentFreq++;
                if (currentFreq==maxFreq)
                {
                    results.push_back(root->val);                
                }
                else if (currentFreq>maxFreq)
                {
                    results={root->val};
                    maxFreq=currentFreq;
                }                    
            }
            else
            {
                prev=root->val;
                currentFreq=1;
                if (maxFreq==1)
                    results.push_back(root->val);
            }
        }
        
        DFS(root->right);
    }
};


$0
endsnippet
::::::::::::::
Tree/501.Find-Mode-in-Binary-Search-Tree/Readme.md
::::::::::::::
snippet Find-Mode-in-Binary-Search-Tree "Find-Mode-in-Binary-Search-Tree" b
### 501.Find-Mode-in-Binary-Search-Tree

做中序遍历，这样保证遍历的元素都是递增的顺序。实时更新prev,currentFreq,maxFreq和results。注意maxFreq==0是做特殊处理。


[Leetcode Link](https://leetcode.com/problems/find-mode-in-binary-search-tree)

$0
endsnippet
::::::::::::::
Tree/543.Diameter-of-Binary-Tree/543.Diameter-of-Binary-Tree.cpp
::::::::::::::
snippet Diameter-of-Binary-Tree "Diameter-of-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int ret = 0;
public:
    int diameterOfBinaryTree(TreeNode* root) 
    {
        LongestPathToLeaf(root); 
        return ret-1;
    }
    
    int LongestPathToLeaf(TreeNode* node)
    {
        if (node == NULL) return 0;
        
        int leftPath = LongestPathToLeaf(node->left);
        int rightPath = LongestPathToLeaf(node->right);
        ret = max(ret, leftPath+1+rightPath);
        return max(leftPath, rightPath) + 1;
    }
};


$0
endsnippet
::::::::::::::
Tree/543.Diameter-of-Binary-Tree/Readme.md
::::::::::::::
snippet Diameter-of-Binary-Tree "Diameter-of-Binary-Tree" b
### 543.Diameter-of-Binary-Tree

对于所有可能的diameter，本质都对应了一个节点作为“拐点”。所以本题的基本思想就是遍历所有的节点，对每个节点找最长的左子树-根-右子树的路径。

如果从上往下地DFS，要避免这种情况：先算出根节点的路径，再计算左子树和右子树的路径。因为在算根节点的最长路径时，必然会考察其左子树和右子树；这样，如果再计算左子树和右子树的最长路径，必然会浪费之前的计算结果。所以我们应该设计这样的DFS函数：
```cpp
int DFS(TreeNode* root)
{
  int info_left = DFS(root->left);
  int info_right = DFS(root->left);
  result = max(result, f1(info_left,info_right));  // 以该节点为拐点的最长路径
  return f2(info_left,info_right);  // 设计的返回值
}
```
这样本质上就实现了自底向上的遍历。那么我们需要提取什么样的信息呢？我们其实需要一个节点到叶子节点的最长路径即可。
```cpp
    int LongestPathToLeaf(TreeNode* root) // 返回以该节点为顶点到叶子节点的最长路径
    {
        if (root==NULL) return 0;        
        int left = LongestPathToLeaf(root->left);
        int right = LongestPathToLeaf(root->right);
        result = max(result,left+right+1);  // 以该节点为拐点的最长路径
        return max(left,right)+1;  // 以该节点为顶点到叶子节点的最长路径
    }
```    


[Leetcode Link](https://leetcode.com/problems/diameter-of-binary-tree)

$0
endsnippet
::::::::::::::
Tree/545.Boundary-of-Binary-Tree/545.Boundary of Binary Tree.cpp
::::::::::::::
snippet Boundary-of-Binary-Tree "Boundary-of-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<int> boundaryOfBinaryTree(TreeNode* root) 
    {
        vector<int>results;
        if (root==NULL) return results;
        
        results.push_back(root->val);
        
        vector<int>Left;
        if (root->left!=NULL)
        {
            GoLeft(root->left,Left);
            Left.pop_back();
        }
        
        vector<int>Bottom;
        if (root->left!=NULL || root->right!=NULL)
            GoBottom(root,Bottom);
        
        vector<int>Right;
        if (root->right!=NULL)
        {
            GoRight(root->right,Right);
            Right.pop_back();
        }
        reverse(Right.begin(),Right.end());
        
        for (int i=0; i<Left.size(); i++)
            results.push_back(Left[i]);

        for (int i=0; i<Bottom.size(); i++)
            results.push_back(Bottom[i]);
        
        for (int i=0; i<Right.size(); i++)
            results.push_back(Right[i]);    
        
        return results;
    }
    
    void GoLeft(TreeNode* root, vector<int>& Left)
    {
        if (root==NULL) return;
        
        Left.push_back(root->val);
        if (root->left!=NULL)
            GoLeft(root->left,Left);
        else if (root->right!=NULL)
            GoLeft(root->right,Left);
    }
    
    void GoRight(TreeNode* root, vector<int>& Right)
    {
        if (root==NULL) return;
        
        Right.push_back(root->val);
        if (root->right!=NULL)
            GoRight(root->right,Right);
        else if (root->left!=NULL)
            GoRight(root->left,Right);
    }    
    
    void GoBottom(TreeNode* root, vector<int>& Bottom)
    {
        if (root==NULL) return;
        if (root->left==NULL && root->right==NULL)
        {
            Bottom.push_back(root->val);
        }
        else
        {
            GoBottom(root->left,Bottom);
            GoBottom(root->right,Bottom);
        }
    }
};


$0
endsnippet
::::::::::::::
Tree/545.Boundary-of-Binary-Tree/Readme.md
::::::::::::::
snippet Boundary-of-Binary-Tree "Boundary-of-Binary-Tree" b
### 545.Boundary-of-Binary-Tree

需要分别写子函数遍历左边界、底部叶子节点、右边界。

对于左边界，注意题目要求，当根节点没有左子树时，左边界就只是根。所以，遍历左边界的函数其实可以从root->left开始。同理，遍历右边界的函数可以从root->right开始。左边界、右边界求完后，都要各自pop_back()，为叶子节点数组腾出重复的节点位置。

另外，遍历底部叶子节点，需要注意仅有根节点的情况，这时不算有叶子节点。

最终结果就是：根 + 左边界（弹出最后一个）+ 所有叶子节点（不包括根）+ 右边界的反序（弹出最后一个）。


[Leetcode Link](https://leetcode.com/problems/boundary-of-binary-tree)

$0
endsnippet
::::::::::::::
Tree/549.Binary-Tree-Longest-Consecutive-Sequence-II/549.Binary Tree Longest Consecutive Sequence II.cpp
::::::::::::::
snippet Binary-Tree-Longest-Consecutive-Sequence-II "Binary-Tree-Longest-Consecutive-Sequence-II" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<TreeNode*,int>IS;
    unordered_map<TreeNode*,int>DS;
    int result=0;
public:
    int longestConsecutive(TreeNode* root) 
    {
        if (root==NULL) return 0;
        
        int x=longest_increase(root);
        int y=longest_decrease(root);
        DFS(root);
        return result;
    }
    
    void DFS(TreeNode* node)
    {
        if (node==NULL) return;
        DFS(node->left);
        result = max(result,IS[node]+DS[node]-1);
        //cout<<node->val<<" "<<IS[node]<<" "<<DS[node]<<endl;
        DFS(node->right);
    }
    
    int longest_increase(TreeNode* node)
    {
        if (node==NULL) return 0;
        
        int res = 1;
        if (node->left!=NULL)
        {
            int temp = longest_increase(node->left);
            if (node->val+1==node->left->val)
                res = max(res,temp+1);
        }
        if (node->right!=NULL)
        {
            int temp = longest_increase(node->right);
            if (node->val+1==node->right->val)
                res = max(res,temp+1);
        }
        
        IS[node]=res;
        return res;
    }

    int longest_decrease(TreeNode* node)
    {
        if (node==NULL) return 0;
        
        int res = 1;
        if (node->left!=NULL)
        {
            int temp = longest_decrease(node->left);
            if (node->val-1==node->left->val)
                res = max(res,temp+1);
        }
        if (node->right!=NULL)
        {
            int temp = longest_decrease(node->right);
            if (node->val-1==node->right->val)
                res = max(res,temp+1);
        }
        DS[node]=res;
        return res;
    }    
};


$0
endsnippet
::::::::::::::
Tree/549.Binary-Tree-Longest-Consecutive-Sequence-II/Readme.md
::::::::::::::
snippet Binary-Tree-Longest-Consecutive-Sequence-II "Binary-Tree-Longest-Consecutive-Sequence-II" b
### 549.Binary-Tree-Longest-Consecutive-Sequence-II

第一步：从上到下递归调用所有的节点，每个节点都算出以其为顶点的最长增序列和最长减序列，并将这两个长度存放在两个作为全局的Hash表中。

第二部：DFS遍历所有节点，遇到每个节点时，都可以算出它的longest consecutive sequence长度 IS[node]+DS[node]-1，不断更新最终结果。



[Leetcode Link](https://leetcode.com/problems/binary-tree-longest-consecutive-sequence-ii)

$0
endsnippet
::::::::::::::
Tree/558.Quad-Tree-Intersection/558.Quad-Tree-Intersection.cpp
::::::::::::::
snippet Quad-Tree-Intersection "Quad-Tree-Intersection" b
/*
// Definition for a QuadTree node.
class Node {
public:
    bool val;
    bool isLeaf;
    Node* topLeft;
    Node* topRight;
    Node* bottomLeft;
    Node* bottomRight;

    Node() {}

    Node(bool _val, bool _isLeaf, Node* _topLeft, Node* _topRight, Node* _bottomLeft, Node* _bottomRight) {
        val = _val;
        isLeaf = _isLeaf;
        topLeft = _topLeft;
        topRight = _topRight;
        bottomLeft = _bottomLeft;
        bottomRight = _bottomRight;
    }
};
*/
class Solution {
public:
    Node* intersect(Node* quadTree1, Node* quadTree2) 
    {
        if (quadTree1->isLeaf && quadTree2->isLeaf)
        {
            Node* node = new Node(quadTree1->val || quadTree2->val, true, NULL, NULL, NULL, NULL);
            return node;
        }
        
        if (quadTree1->isLeaf && quadTree1->val || quadTree2->isLeaf && quadTree2->val)
        {
            Node* node = new Node(1, true, NULL, NULL, NULL, NULL);
            return node;
        }
        
        Node* A;
        Node* B;
            
        A = quadTree1->isLeaf ? quadTree1 : quadTree1->topLeft;
        B = quadTree2->isLeaf ? quadTree2 : quadTree2->topLeft;            
        Node* topLeft = intersect(A,B);
            
        A = quadTree1->isLeaf ? quadTree1 : quadTree1->topRight;
        B = quadTree2->isLeaf ? quadTree2 : quadTree2->topRight;            
        Node* topRight = intersect(A,B);
            
        A = quadTree1->isLeaf ? quadTree1 : quadTree1->bottomLeft;
        B = quadTree2->isLeaf ? quadTree2 : quadTree2->bottomLeft;            
        Node* bottomLeft = intersect(A,B);
            
        A = quadTree1->isLeaf ? quadTree1 : quadTree1->bottomRight;
        B = quadTree2->isLeaf ? quadTree2 : quadTree2->bottomRight;            
        Node* bottomRight = intersect(A,B);
            
        if (topLeft->isLeaf && topRight->isLeaf && bottomLeft->isLeaf && bottomRight->isLeaf \\
            && topLeft->val==topRight->val && topRight->val==bottomLeft->val && bottomLeft->val==bottomRight->val )
        {
            Node* node = new Node(topLeft->val, true, NULL, NULL, NULL, NULL);
            return node;
        }
        else
        {
            Node* node = new Node(0, false, NULL, NULL, NULL, NULL);
            node->topLeft = topLeft;
            node->topRight = topRight;
            node->bottomLeft = bottomLeft;
            node->bottomRight = bottomRight;
            return node;
        }
    }
};


$0
endsnippet
::::::::::::::
Tree/558.Quad-Tree-Intersection/Readme.md
::::::::::::::
snippet Quad-Tree-Intersection "Quad-Tree-Intersection" b
### 558.Quad-Tree-Intersection

此题设计了一个叫做四分树的数据结构。我们知道，任何树的题目，都可以用递归来实现。

我们考虑DFS(A,B)的时候，说明A和B肯定是同级的。但是，本题最大的难点在于，A和B的分支情况可能并不相同，一个可能有，一个可能无，无法直接做类似DFS(A->left,B->left)这种递归，怎么办呢？

四分树恰恰有这么一个特殊的性质，那就是如果A->isLeaf的话，那么就隐含着意味着A相当于有着val和它自身相同的四个分支！所以，我们可以用DFS(A,B->left)这种形式继续递归下去，递归的底层是直到遇到两个参数都是isLeaf为止。

本题还有需要注意的一点是，上述的例子中，假设C=DFS(A,B)，我们把已经是leaf的A“隐式地”添加了四个分支，以方便和B继续递归下去。如果这四个分支反馈的val都是相同的，那么根据四分树的定义C是不能有分支的，所以我们需要check这四个子递归的结果，如果这四个分支都是相同的val，那么我们需要标记C为isLeaf即没有分支。


[Leetcode Link](https://leetcode.com/problems/quad-tree-intersection)

$0
endsnippet
::::::::::::::
Tree/572.Subtree-of-Another-Tree/572.Subtree-of-Another-Tree_KMP.cpp
::::::::::::::
snippet Subtree-of-Another-Tree "Subtree-of-Another-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
public:
    bool isSubtree(TreeNode* s, TreeNode* t) 
    {
        vector<int>S, T;
        convert(s, S);
        convert(t, T);
        vector<int>suf = preprocess(T);
        int n = S.size();
        vector<int>dp(n,0);
        dp[0] = (T[0]==S[0]);
        for (int i=1; i<n; i++)
        {
            int j = dp[i-1];
            while (j>0 && T[j]!=S[i])
                j = suf[j-1];
            dp[i] = j+(T[j]==S[i]);
            if (dp[i] == T.size())
                return true;
        }
        return false;
    }

    void convert(TreeNode* node, vector<int>&arr)
    {
        if (node==NULL)
        {
            arr.push_back(INT_MAX);
            return;
        }
        arr.push_back(node->val);
        convert(node->left, arr);
        convert(node->right, arr);
    }

    vector<int> preprocess(vector<int>& P)
    {
        int n = P.size();
        vector<int>dp(n,0);
        for (int i=1; i<n; i++)
        {
            int j = dp[i-1];
            while (j>0 && P[j]!=P[i])
                j = dp[j-1];
            dp[i] = j+(P[j]==P[i]);
        }
        return dp;
    }
};


$0
endsnippet
::::::::::::::
Tree/572.Subtree-of-Another-Tree/572.Subtree-of-Another-Tree_Recursion.cpp
::::::::::::::
snippet Subtree-of-Another-Tree "Subtree-of-Another-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    bool isSubtree(TreeNode* s, TreeNode* t) 
    {
        if (s==NULL||t==NULL)
            return (s==t);
        if (isSame(s,t))
            return true;
        else
            return isSubtree(s->left,t) || isSubtree(s->right,t);
    }
    
    bool isSame(TreeNode* a, TreeNode* b)
    {
        if (a==NULL || b==NULL) return a==b;
        if (a->val!=b->val) return false;
        return isSame(a->left,b->left) && isSame(a->right,b->right);
    }
};


$0
endsnippet
::::::::::::::
Tree/572.Subtree-of-Another-Tree/572.Subtree-of-Another-Tree_uid.cpp
::::::::::::::
snippet Subtree-of-Another-Tree "Subtree-of-Another-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
typedef long long ll;

class Solution {
    unordered_map<ll, int>key2Id;
    unordered_map<ll, int>key2Count;
    unordered_map<ll, int>Id2key;

public:
    bool isSubtree(TreeNode* s, TreeNode* t) 
    {
        getId(s);
        int ID = getId(t);
        for (auto x: key2Id)
        {
            if (x.second==ID)
                return key2Count[x.first] > 1;
        }
        return false;
    }
    
    ll getId(TreeNode* node)
    {
        if (node==NULL) return 0;        
        ll key = (getId(node->left)<<32) + (getId(node->right)<<16) + node->val;        
        key2Count[key]+=1;
        if (key2Id.find(key)==key2Id.end())
        {
            key2Id[key] = key2Id.size()+1;                        
        }        
        return key2Id[key];
    }
};


$0
endsnippet
::::::::::::::
Tree/572.Subtree-of-Another-Tree/Readme.md
::::::::::::::
snippet Subtree-of-Another-Tree "Subtree-of-Another-Tree" b
### 572.Subtree-of-Another-Tree

#### 解法1： 递归
判断s是否含有子树是t，先考虑s是否本身就是t：如果是的话直接返回true，如果不是的话就需要考察 isSubtree(s->left,t)||isSubtree(s->right,t)，注意相应的前提是左右子树非NULL。

对于判断两个数是否相等的函数 isSameTree(s,t)，就很好写了。

#### 解法2： KMP
我们将每棵树按照先序遍历转化为数组S和T，就可以映射为一个unique的序列。注意，对于任何的叶子节点，序列里也要包含它的两个空叶子（可以设计为INT_MAX）.

于是这道题就变成了在序列S里找一段和T一样的window。这就可以用到KMP算法。尽管这里的“目标串”和“模式串”都是数组而不是字符串，但并不妨碍KMP算法的实现：依旧是先计算模式串的自相关后缀数组，再计算S和T之间的互相关后缀数组。

#### 解法3： UID
参考```652.Find-Duplicate-Subtrees```的解法。先对s树的所有子树进行编号(包括key和ID），在已有的key2Id数据库的基础上，再对t树的所有子树用同样的法则进行编号。如果t树根节点的编号在数据库里出现了2次或以上，那么就说明t树必然在s树里出现过（因为t树里面不可能出现两个结构相同的、以t为根节点子树）。

[Leetcode Link](https://leetcode.com/problems/subtree-of-another-tree)


$0
endsnippet
::::::::::::::
Tree/652.Find-Duplicate-Subtrees/652.Find-Duplicate-Subtrees_v1.cpp
::::::::::::::
snippet Find-Duplicate-Subtrees "Find-Duplicate-Subtrees" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<string,vector<TreeNode*>>Map;
public:
    vector<TreeNode*> findDuplicateSubtrees(TreeNode* root) 
    {
        DFS(root);
        vector<TreeNode*>results;
        for (auto a:Map)
        {
            if (a.second.size()>1)
                results.push_back(a.second[0]);
        }
        return results;        
    }
    
    void DFS(TreeNode* node)
    {
        if (node==NULL)
            return;
        Map[serialize(node)].push_back(node);
        DFS(node->left);
        DFS(node->right);        
    }
    
    string serialize(TreeNode* node)
    {        
        queue<TreeNode*>q;
        q.push(node);
        string result;
        
        while (!q.empty())
        {            
            if (q.front()==NULL)
            {
                q.pop();
                result+="#,";                
            }
            else
            {
                result+=to_string(q.front()->val);
                result+=",";
                q.push(q.front()->left);
                q.push(q.front()->right);
                q.pop();                
            }
        }
        return result;
    }
};


$0
endsnippet
::::::::::::::
Tree/652.Find-Duplicate-Subtrees/652.Find-Duplicate-Subtrees_v2.cpp
::::::::::::::
snippet Find-Duplicate-Subtrees "Find-Duplicate-Subtrees" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    unordered_map<string, int> key2Id;
    unordered_map<string, int> key2count;
    vector<TreeNode*> rets;
public:
    vector<TreeNode*> findDuplicateSubtrees(TreeNode* root) 
    {
        getId(root);
        return rets;        
    }
    
    int getId(TreeNode* node)
    {
        if (node==NULL) return 0;
        
        string key = to_string(node->val) + "#" + to_string(getId(node->left)) + "#" + to_string(getId(node->right));
        
        if (key2Id.find(key) == key2Id.end())
        {
            key2Id[key] = key2Id.size()+1;
            key2count[key] = 1;
        }
        else
        {
            key2count[key]+=1;
            if (key2count[key]==2)
            {
                rets.push_back(node);
            }
        }
        
        return key2Id[key];
    }
};


$0
endsnippet
::::::::::::::
Tree/652.Find-Duplicate-Subtrees/Readme.md
::::::::::::::
snippet Find-Duplicate-Subtrees "Find-Duplicate-Subtrees" b
### 652.Find-Duplicate-Subtrees

#### 解法1 
结合LeetCode 449，任何一颗二叉树都可以序列化成一个带有唯一特征的字符串。我们dfs整棵树，对于每个节点都作为子树进行序列化，利用序列化的字符串作为key创建Hash表，归类所有key相同的子树。

#### 解法2
解法1的一个缺陷是序列化得到的key字符串可能会非常长。解决方法是将每个key都及时转化为一个数字ID，这样可以有效减少key的长度。

例如，对于根节点是node的子树，我们定义它的```string key = to_string(node->val) + "#" + to_string(getId(node->left)) + "#" + to_string(getId(node->right))```。其中getId就是将左子树（或者右子树）的序列化结果用映射的数字ID代表。显然通过这种方式生成的node的key，会比纯序列化的结果短很多。

对于当前生成的key，如果在key2Id中已经出现过，那么说明当前的子树就是一个duplicate subtree。否则，我们就给这个key映射一个新的ID，一般就令为 ```key2Id[key] = key2Id.size()+1```. 这个结果就是getId(node)的返回值。

另外，我们还需要统计所有key出现的次数. 当某个key第二次出现时，我们就把当前的节点加入答案中。

[Leetcode Link](https://leetcode.com/problems/find-duplicate-subtrees)


$0
endsnippet
::::::::::::::
Tree/655.Print-Binary-Tree/655.Print-Binary-Tree.cpp
::::::::::::::
snippet Print-Binary-Tree "Print-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    vector<vector<string>> printTree(TreeNode* root) 
    {
        int maxHeight = getHeight(root);
        int maxWidth = pow(2,maxHeight)-1;
        auto results=vector<vector<string>>(maxHeight,vector<string>(maxWidth));                
        DFS(root,0,0,maxWidth-1,results);        
        return results;
    }
    
    void DFS(TreeNode* root, int dep, int start, int end, vector<vector<string>>& results)
    {
        if (root==NULL) return;
        int pos=(start+end)/2;        
        results[dep][pos]=to_string(root->val);
        DFS(root->left,dep+1,start,pos-1,results);
        DFS(root->right,dep+1,pos+1,end,results);
    }
    
    int getHeight(TreeNode* root)
    {
        if (root==NULL) return 0;
        else return max(getHeight(root->left),getHeight(root->right))+1;
    }
    
};


$0
endsnippet
::::::::::::::
Tree/655.Print-Binary-Tree/Readme.md
::::::::::::::
snippet Print-Binary-Tree "Print-Binary-Tree" b
### 655.Print-Binary-Tree

先求出这棵树的高度height，那么整个结果矩阵的宽度就是 pow(2,height)-1.

如何填充这个矩阵数组呢？要利用每个父节点在下一层的相对位置，是其所有子节点的最中央的特点，用DFS来做。设置每一层的start和end，找到mid的位置放置父节点的值。则左子树在下一层的摆放区间就在start\~mid-1，右子树在下一层的摆放区间就在mid+1\~end.如此就可以设置递归函数。


[Leetcode Link](https://leetcode.com/problems/print-binary-tree)

$0
endsnippet
::::::::::::::
Tree/662.Maximum-Width-of-Binary-Tree/662.Maximum-Width-of-Binary-Tree.cpp
::::::::::::::
snippet Maximum-Width-of-Binary-Tree "Maximum-Width-of-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    int widthOfBinaryTree(TreeNode* root) 
    {
        root->val = 0;
        deque<TreeNode*>q;
        q.push_back(root);
        int ans = 1;

        while (!q.empty())
        {
            int len = q.size();
            ans = max(ans, q.back()->val - q.front()->val + 1);

            int base = q.front()->val;

            while (len--)
            {            
                TreeNode* node = q.front();
                q.pop_front();
                
                if (node->left)
                {
                    node->left->val = (node->val-base)*2+1;
                    q.push_back(node->left);
                }
                if (node->right)
                {
                    node->right->val = (node->val-base)*2+2;
                    q.push_back(node->right);
                }
            }
        }
        return ans;
    }
};


$0
endsnippet
::::::::::::::
Tree/662.Maximum-Width-of-Binary-Tree/Readme.md
::::::::::::::
snippet Maximum-Width-of-Binary-Tree "Maximum-Width-of-Binary-Tree" b
### 662.Maximum-Width-of-Binary-Tree

利用二叉树的这个性质：若一个节点的深度是level，在该层的序号是order，则其左子树的深度是level+1且在该层的序号是```order*2```，其右子树的深度是level+1且在该层的序号是```order*2+1```。

我们可以用BFS的思想，对这棵树做层级遍历。那么每层的的第一个节点和最后一个节点的序号之差就代表了这一层的宽度。

本题需要优化的第一个地方是：随着层级的深入，节点序号的数值也会膨胀，可以想象，当超过128层的时候，序号连long long都无法记录了。优化的方法是：将同一层的节点的序号统一削减掉该层第一个节点的序号，这样不会影响每一层宽度的计算。

[Leetcode Link](https://leetcode.com/problems/maximum-width-of-binary-tree)


$0
endsnippet
::::::::::::::
Tree/687.Longest-Univalue-Path/687.Longest-Univalue-Path.cpp
::::::::::::::
snippet Longest-Univalue-Path "Longest-Univalue-Path" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    int ret = 0;
public:
    int longestUnivaluePath(TreeNode* root) 
    {
        dfs(root);
        return max(0, ret-1);
    }
    int dfs(TreeNode* node)
    {
        if (node==NULL) return 0;        
        int len1 = dfs(node->left);
        int len2 = dfs(node->right);
        
        int L = 0, R = 0;
        if (node->left && node->left->val == node->val)
            L = len1;
        if (node->right && node->right->val == node->val)
            R = len2;
        ret = max(ret, L+1+R);
        return 1+max(L,R);
    }
};


$0
endsnippet
::::::::::::::
Tree/687.Longest-Univalue-Path/Readme.md
::::::::::::::
snippet Longest-Univalue-Path "Longest-Univalue-Path" b
### 687.Longest-Univalue-Path

此题和```543. Diameter of Binary Tree```很相似。设计DFS(node)函数，返回的是以node为起点，朝某个单向下行最长的Univalue path

每一次调用DFS(node)，都要先调用L=DFS(node->left)和R=DFS(node->right)，将左右节点都递归遍历完毕。

如果左节点、当前节点、右节点的数值相等，说明可以形成一个完整的uniValuePath，用Ｌ＋Ｒ＋１来刷新全局的longest变量。

那么考虑DFS(node)自己的返回值是什么呢？显然是１，或Ｌ＋１（如果根与左节点相同），或Ｒ＋１（如果根与右节点相同）


[Leetcode Link](https://leetcode.com/problems/longest-univalue-path)


$0
endsnippet
::::::::::::::
Tree/742.Closest-Leaf-in-a-Binary-Tree/742.Closest-Leaf-in-a-Binary-Tree.cpp
::::::::::::::
snippet Closest-Leaf-in-a-Binary-Tree "Closest-Leaf-in-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    unordered_map<TreeNode*,int>Dist2Leaf;
    unordered_map<TreeNode*,int>ClosestLeaf;
    int dist=INT_MAX;
    int result;
public:
    int findClosestLeaf(TreeNode* root, int k) 
    {
        int temp;
        temp = DFS_find_closest_leaf(root);
        temp = DFS_find_k(root,k);
        return result;
    }
    
    int DFS_find_closest_leaf(TreeNode* root)
    {
        if (root==NULL) 
            return INT_MAX;
        
        if (root->left==NULL && root->right==NULL)
        {
            Dist2Leaf[root]=0;
            ClosestLeaf[root]=root->val;
            return 0;
        }
        
        int L=DFS_find_closest_leaf(root->left);
        int R=DFS_find_closest_leaf(root->right);
        
        if (L>R)
        {
            Dist2Leaf[root]=R+1;
            ClosestLeaf[root]=ClosestLeaf[root->right];            
        }
        else
        {
            Dist2Leaf[root]=L+1;
            ClosestLeaf[root]=ClosestLeaf[root->left];            
        }        
        
        return Dist2Leaf[root];
    }
    
    int DFS_find_k(TreeNode* root, int k)
    {
        if (root==NULL) 
            return -1;
        
        if (root->val==k)
        {
            if (dist > Dist2Leaf[root])
            {
                dist = Dist2Leaf[root];
                result = ClosestLeaf[root];
            }
            return 0;
        }
        
        int L=DFS_find_k(root->left,k);
        if (L!=-1)
        {
            if (root->right!=NULL && dist > L+2+Dist2Leaf[root->right])
            {
                dist = L+2+Dist2Leaf[root->right];
                result = ClosestLeaf[root->right];                    
            }
            return L+1;
        }
        
        int R=DFS_find_k(root->right,k);
        if (R!=-1)
        {
            if (root->left!=NULL && dist > R+2+Dist2Leaf[root->left])
            {
                dist = L+2+Dist2Leaf[root->left];
                result = ClosestLeaf[root->left];                    
            }
            return R+1;
        }
        
        return -1;
    }
    
    
};


$0
endsnippet
::::::::::::::
Tree/742.Closest-Leaf-in-a-Binary-Tree/Readme.md
::::::::::::::
snippet Closest-Leaf-in-a-Binary-Tree "Closest-Leaf-in-a-Binary-Tree" b
### 742.Closest-Leaf-in-a-Binary-Tree

一般解决关于二叉树的问题，90%都可以用DFS解决。此题也不例外，但需要仔细考虑设计。

首先要明确，从节点k到最近叶子节点的路径，有两种可能：第一种只有一种情况，即从k节点本身开始直接往下走之外；第二种就是可能先向上走，然后经过一个拐点，再从另一端的子树往下。所以这个“拐点”就和路径就是一一对应的关系。我们的目的就是考察所有的节点，找出以其为拐点、“从节点k到最近叶子节点”的路径的最短长度，

对于节点node，我们首先要知道node到节点k之间的距离，这需要一个递归函数 DFS_find_k。如果节点k在node的左子树，那么我们就要考虑沿着node的右子树往下、到达叶子节点的最短路径，这又需要一个递归函数 DFS_find_closest_leaf. 于是 DFS_find_k(node->left)+2+DFS_find_closest_leaf(node->right) 就是整条路径的长度。反之，如果节点k在node的右子树，那么 DFS_find_closest_leaf(node->right)+2+DFS_find_k(node->left) 就是整条路径的长度。注意，两个长度只可能有一个有效。

从上可知，我们可以提前做一次整棵树的DFS_find_closest_leaf搜索，记录下所有节点对应的 Dist_to_Leaf[node]，顺带把ClosetLeaf[node]也记录下来，因为结果需要输出的是这个叶子节点的val。然后再过一遍DFS_find_k，对于经过的每一个节点，我们都可以算出如上所述的路径长度。然后再在全局变量中取最小。

注意：慎用INT_MAX，因为在你不知情的情况下很可能会对INT_MAX做了运算，而INT_MAX+1反而成了最小值。


[Leetcode Link](https://leetcode.com/problems/closest-leaf-in-a-binary-tree)

$0
endsnippet
::::::::::::::
Tree/834.Sum-of-Distances-in-Tree/834.Sum-of-Distances-in-Tree.cpp
::::::::::::::
snippet Sum-of-Distances-in-Tree "Sum-of-Distances-in-Tree" b
class Solution {
    unordered_map<int,unordered_set<int>>Children;
    vector<int>SubLeaves;
    vector<int>results;
    
public:
    vector<int> sumOfDistancesInTree(int N, vector<vector<int>>& edges) 
    {
        SubLeaves.assign(N,0);
        results.assign(N,0);
        
        unordered_map<int,unordered_set<int>>Map;        
        for (int i=0; i<edges.size(); i++)
        {
            Map[edges[i][0]].insert(edges[i][1]);
            Map[edges[i][1]].insert(edges[i][0]);
        }
                        
        queue<int>q;
        q.push(0);
        while (!q.empty())
        {
            int root = q.front();            
            q.pop();
            for (auto child:Map[root])
            {
                Children[root].insert(child);    
                Map[child].erase(root);
                q.push(child);
            }                        
        }
                
        int root = 0;
        int temp = DFS1(root);        
        int AllSum = DFS2(root);        
        
        results[0] = AllSum;
        DFS3(root);
        
        return results;
    }
    
    int DFS1(int x)
    {
        if (Children[x].size()==0)
        {
            SubLeaves[x]=1;
            return 1;
        }
        int sum = 1;
        for (auto a: Children[x])        
            sum+=DFS1(a);                    
        SubLeaves[x]=sum;   
        return sum;
    }
        
    int DFS2(int x)
    {
        if (Children[x].size()==0) return 0;        
        int sum = 0;
        for (auto a: Children[x])        
            sum+=DFS2(a)+SubLeaves[a];        
        return sum;
    }
    
    void DFS3(int x)
    {        
        for (auto a: Children[x])
        {
            results[a] = results[x] - SubLeaves[a] + results.size()-SubLeaves[a];
            DFS3(a);
        }
    }

};


$0
endsnippet
::::::::::::::
Tree/834.Sum-of-Distances-in-Tree/Readme.md
::::::::::::::
snippet Sum-of-Distances-in-Tree "Sum-of-Distances-in-Tree" b
### 834.Sum-of-Distances-in-Tree

首先回顾一下关于图论的几个概念。树是图的一种，是指没有回路的连通图。对于这种图，任意一个节点都可以当做root从而展开为一棵直观意义上的树。

本题也是如此，我们可以任意选取一个节点定义为root，然后可以用BFS建立起一个Hash表来代表传统意义上树结构里parent->child的连接关系（注意，因为是树，反向的关系我们不记录在Hash表里）。

然后我们可以做什么呢？比较容易用递归办到的，就是root到所有子节点的距离之和，标记为f(root)。那么接下来，如何得到一个子节点child到其他所有节点的距离之和呢？难道要以该节点为根重新展开一张树吗？其实我们可以考虑f(parent)和f(child)之间的关系。

假设已知f(parent)，如果我们把起点从parent迁到child的话，那么到所有除child子树之外的节点，距离都增加了1；到所有child子树的节点，距离都减少了1.

所以有如下的关系
```
f(child) = f(parent)+(除child子树之外所有节点的数目)-(child子树的节点数目)
```
可见，所有的f都可以自上而下通过递归得到。


[Leetcode Link](https://leetcode.com/problems/sum-of-distances-in-tree)

$0
endsnippet
::::::::::::::
Tree/863.All-Nodes-Distance-K-in-Binary-Tree/863.All-Nodes-Distance-K-in-Binary-Tree.cpp
::::::::::::::
snippet All-Nodes-Distance-K-in-Binary-Tree "All-Nodes-Distance-K-in-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
    vector<int>rets;
public:
    vector<int> distanceK(TreeNode* root, TreeNode* target, int K) 
    {
        DFS(root, target, K);
        return rets;
    }
    
    int DFS(TreeNode* node, TreeNode* target, int k)
    {
        if (node==NULL) return -1;
        
        if (node==target)
        {
            fetch(node, k);
            return 0;
        }
            
        
        int depth1 = DFS(node->left, target, k);        
        if (depth1 != -1)
        {
            if (depth1 == k-1)
                rets.push_back(node->val);
            else                
                fetch( node->right, k - depth1 -2 );
                
            return depth1+1;
        }
        
        int depth2 = DFS(node->right, target, k);
        if (depth2 != -1)
        {
            if (depth2 == k-1)
                rets.push_back(node->val);
            else    
                fetch( node->left, k - depth2 -2 );
            return depth2+1;
        }
        
        return -1;
    }
    
    void fetch(TreeNode* node, int k)
    {
        if (node==NULL) return;
        if (k<0) return;
        if (k==0)
        {
            rets.push_back(node->val);
            return;
        }
        fetch(node->left, k-1);
        fetch(node->right, k-1);        
    }
};




$0
endsnippet
::::::::::::::
Tree/863.All-Nodes-Distance-K-in-Binary-Tree/Readme.md
::::::::::::::
snippet All-Nodes-Distance-K-in-Binary-Tree "All-Nodes-Distance-K-in-Binary-Tree" b
### 863.All-Nodes-Distance-K-in-Binary-Tree

本题的关键点是，任何两个节点AB之间的路径，都可以想象成有一个“拐点”O，其中OA是沿左子树向下的路径，OB是沿右子树向下的路径。我们可以递归处理每一个节点node，设想它是这个拐点，A是target并位于其中一个分支，那么如何在另一个分支中找到B？显然，假设我们能得到target到node->left之间的距离是t，那么我们只需要从node->right出发往下走k-2-t步，所抵达的节点就都是符合要求的B点。同理，如果target位于node->right分支，类似的处理。

需要单独处理的情况就是```node==target```，此时我们找的就是从node开始往下走k步到达的节点。

注意，```DFS(node)```函数的一个副产品就是可以返回target到达node的距离（假设target在node的下方），这样就可以避免再多写一个递归函数。

本题和```543.Diameter-of-Binary-Tree```的套路是一样的。也就是说，对于树里面任何两点之间的距离，优先去想它的拐点。


[Leetcode Link](https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree)

$0
endsnippet
::::::::::::::
Tree/897.Increasing-Order-Search-Tree/897.Increasing-Order-Search-Tree.cpp
::::::::::::::
snippet Increasing-Order-Search-Tree "Increasing-Order-Search-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
public:
    TreeNode* increasingBST(TreeNode* root) 
    {
        if (root == NULL)
            return NULL;
        if (root->left)
        {
            TreeNode* head = increasingBST(root->left);
            TreeNode* tail = head;
            while (tail->right)
                tail = tail->right;
            tail->right = root;
            root->left = NULL;
            root->right = increasingBST(root->right);
            return head;
        }
        else
        {
            root->right = increasingBST(root->right);
            return root;
        }        
    }
};


$0
endsnippet
::::::::::::::
Tree/897.Increasing-Order-Search-Tree/Readme.md
::::::::::::::
snippet Increasing-Order-Search-Tree "Increasing-Order-Search-Tree" b
### 897.Increasing-Order-Search-Tree

典型的递归函数处理树的问题。抽象起来，increasingBST要做四件事情：1. 将左子树拉成一条直线；2.将根节点加在左子树（直线）的最后一个节点的右边；3.将右子树拉成一条直线；4. 将右子树拼接在原根节点的右边。最后返回的是新树的根。其中第一步和第三步就是increasingBST本身。


$0
endsnippet
::::::::::::::
Tree/954.Check-Completeness-of-a-Binary-Tree/954.Check-Completeness-of-a-Binary-Tree.cpp
::::::::::::::
snippet Check-Completeness-of-a-Binary-Tree "Check-Completeness-of-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    bool isCompleteTree(TreeNode* root) 
    {
        int nodeNums = countNodes(root);
        return DFS(root,0,nodeNums);
    }
    
    bool DFS(TreeNode* node, int index, int nodeNums)
    {
        if (!node) return true;
        if (index>=nodeNums) return false;
        return DFS(node->left,index*2+1,nodeNums)&&DFS(node->right,index*2+2,nodeNums);
    }
    
    int countNodes(TreeNode* node)
    {
        if (!node) return 0;
        else return 1+countNodes(node->left)+countNodes(node->right);
    }
};


$0
endsnippet
::::::::::::::
Tree/954.Check-Completeness-of-a-Binary-Tree/954.Check-Completeness-of-a-Binary-Tree_v2.cpp
::::::::::::::
snippet Check-Completeness-of-a-Binary-Tree "Check-Completeness-of-a-Binary-Tree" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode(int x) : val(x), left(NULL), right(NULL) {}
};
 */
class Solution {
public:
    bool isCompleteTree(TreeNode* root) 
    {
        queue<TreeNode*>q;
        q.push(root);
        while (q.front()!=NULL)
        {            
            q.push(q.front()->left);            
            q.push(q.front()->right);
            q.pop();
        }
        while (!q.empty())
        {
            if (q.front()!=NULL) return false;
            q.pop();
        }
        return true;
        
    }
};


$0
endsnippet
::::::::::::::
Tree/954.Check-Completeness-of-a-Binary-Tree/Readme.md
::::::::::::::
snippet Check-Completeness-of-a-Binary-Tree "Check-Completeness-of-a-Binary-Tree" b
### 954.Check-Completeness-of-a-Binary-Tree

#### 解法1：
查验是否一棵完全二叉树，有一个固定的技巧。我们将所有的节点按照从高到低，从左往右的顺序依次编号。例如第0层的编号是0，那么第一层的两个节点编号是1,2,那么第二层的四个节点（如果存在的话）编号就是3,4,5,6.其特点是: ```left index = parent index * 2 +1```,```right index = parent index * 2 +2```.

如果一棵完全二叉树按照上述规则编号的话，理论上等同于严格按照层级顺序来遍历所有节点，那么得到的节点编号是顺序的且是满枝的，并且不会超过总结点数。而其他任何非完全二叉树，按照上述规则编号，则必然会导致有某个节点的编号大于了总节点数目。

#### 解法2：
有一个更直观易懂的方法。一棵完全二叉树最大的特点就是，如果我们做层级遍历，那么在遇到最后一个节点之前，所有的节点都是非空的。

因此我们可以用队列做一个层级的遍历，也就是说，每遇到一个节点就将其左右子节点（即使子节点是空）加入队列中。层级遍历的特点就是从上到下，从左到右，因此当遇到队列中的队首元素是NULL的时候，那么意味着它应该就是整棵树最后的节点，队列中剩下的所有的节点必须都是NULL。这就是完全二叉树的充要条件。


[Leetcode Link](https://leetcode.com/problems/check-completeness-of-a-binary-tree)

$0
endsnippet
::::::::::::::
Tree/971.Flip-Binary-Tree-To-Match-Preorder-Traversal/971.Flip-Binary-Tree-To-Match-Preorder-Traversal.cpp
::::::::::::::
snippet Flip-Binary-Tree-To-Match-Preorder-Traversal "Flip-Binary-Tree-To-Match-Preorder-Traversal" b
/**
Definition for a binary tree node.
struct TreeNode {
    int val;
    TreeNode *left;
    TreeNode *right;
    TreeNode() : val(0), left(nullptr), right(nullptr) {}
    TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
    TreeNode(int x, TreeNode *left, TreeNode *right) : val(x), left(left), right(right) {}
};
 */
class Solution {
    unordered_map<int,int>Map;
    vector<int>voyage;
    vector<int>rets;
public:
    vector<int> flipMatchVoyage(TreeNode* root, vector<int>& voyage)         
    {
        this->voyage = voyage;
        for (int i=0; i<voyage.size(); i++)
            Map[voyage[i]] = i;
        if (checkFlip(root, 0, voyage.size()-1))
            return rets;
        else
            return {-1};
    }
    
    bool checkFlip(TreeNode* node, int a, int b)
    {
        if (a>b)
            return false;
        if (node->val != voyage[a])
            return false;        
        if (!node->left && !node->right)
            return a==b;
        
        if (!node->left)
            return checkFlip(node->right, a+1, b);
        else if (!node->right)
            return checkFlip(node->left, a+1, b);
        else
        {
            if (node->left->val==voyage[a+1])
            {
                int pos = Map[node->right->val];
                return checkFlip(node->left, a+1, pos-1) && checkFlip(node->right, pos, b) ;
            }
            else
            {
                rets.push_back(node->val);
                int pos = Map[node->left->val];
                return checkFlip(node->right, a+1, pos-1) && checkFlip(node->left, pos, b) ;
            }            
        }        
    }
};
