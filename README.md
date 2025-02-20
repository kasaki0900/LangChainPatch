## LangChain GPT-3.5-turbo补丁

`langchain.OpenAI`默认模型text-davinci-003已经停止使用，使用推荐替代模型gpt-3.5-turbo时会遇到如下错误：

`ValueError: OpenAIChat currently only supports single prompt, got [...]`

经过排查发现langchain/llms/openai.py中会对输入prompt进行检查，只接受len(prompts)<=1，即单个prompt。

将prompts内容的字符串用空格拼接可以解决该问题。
