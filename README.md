# [RS-MoE: A Vision–Language Model With Mixture of Experts for Remote Sensing Image Captioning and Visual Question Answering](https://ieeexplore.ieee.org/stamp/stamp.jsp?arnumber=10909568) 

> 👨‍💻 **Authors**: Hui Lin*, Danfeng Hong*, Shuhang Ge*, Chuyao Luo, Kai Jiang, Hao Jin, and [Congcong Wen](https://wencc.xyz)<sup>†</sup>  
> <sup>*</sup> Equal Contribution &nbsp;&nbsp;&nbsp; <sup>†</sup> Corresponding Author.

> 📄 **Journal**: *IEEE Transactions on Geoscience and Remote Sensing (TGRS)*, 2025



## 📌 Abstract
Remote Sensing Image Captioning (RSIC) presents unique challenges and plays a critical role in applications such as environmental monitoring, urban planning, and disaster management. Traditional RSIC methods often struggle to produce rich and diverse descriptions. Recently, with significant advancements in Vision-Language Models (VLMs), efforts have emerged to integrate these models into the remote sensing domain and to introduce richly descriptive datasets specifically designed to enhance VLM training. However, most current RSIC models generally apply only fine-tuning to these datasets without developing models tailored to the unique characteristics of remote sensing imagery. This paper proposes RS-MoE, the first Mixture of Expert based VLM specifically customized for remote sensing domain. Unlike traditional MoE models, the core of RS-MoE is the MoE Block, which incorporates a novel Instruction Router and multiple lightweight Large Language Models (LLMs) as expert models. The Instruction Router is designed to generate specific prompts tailored for each corresponding LLM, guiding them to focus on distinct aspects of the RSIC task. This design not only allows each expert LLM to concentrate on a specific subset of the task, thereby enhancing the specificity and accuracy of the generated captions, but also improves the scalability of the model by facilitating parallel processing of sub-tasks. Additionally, we present a two-stage training strategy for tuning our RS-MoE model to prevent performance degradation due to sparsity. We fine-tuned our model on the RSICap dataset using our proposed training strategy. Experimental results on the RSICap dataset, along with evaluations on other traditional datasets where no additional fine-tuning was applied, demonstrate that our model achieves state-of-the-art performance in generating precise and contextually relevant captions. Notably, our RS-MoE-1B variant achieves performance comparable to 13B VLMs, demonstrating the efficiency of our model design. Moreover, our model demonstrates promising generalization capabilities by consistently achieving state-of-the-art performance on the Remote Sensing Visual Question Answering (RSVQA) task.

## 🧠 Contributions

- ✅ We are the first to introduce the MoE framework to multimodal remote sensing, leveraging its task decomposition concept with specialized expert models to effectively address the complexity and diversity of remote sensing data across both visual and textual modalities
- ✅ We propose RS-MoE, a novel Vision-Language Model specifically designed for remote sensing image captioning, with an Instruction Router that dynamically generates task-specific prompts and lightweight LLMs as expert models to enhance both effectiveness and efficiency.
- ✅ We present a two-stage training strategy for RS-MoE, incorporating proper initialization to mitigate sparsity-induced degradation and employing LoRA to reduce trainable parameters, improving both efficiency and manageability of the model during the training process.
- ✅ Extensive experiments demonstrate that, with fine-tuning on a single dataset $\sim 3,000$ images, our model achieves state-of-the-art performance on five RSIC datasets and strong generalization on two RSVQA datasets. Notably, the lightweight RS-MoE-1B matches the performance of larger 13B VLMs while being significantly more efficient.



Please kindly cite the papers if this code is useful and helpful for your research.

```bibtex
@article{rsmoe,
  title={Rs-moe: A vision-language model with mixture of experts for remote sensing image captioning and visual question answering},
  author={Lin, Hui and Hong, Danfeng and Ge, Shuhang and Luo, Chuyao and Jiang, Kai and Jin, Hao and Wen, Congcong},
  journal={IEEE Transactions on Geoscience and Remote Sensing},
  year={2025},
  volume={63},
  pages={1-18},
  publisher={IEEE}
}
```
