Date: 2023-05-18
# Basic information#
- **Title:** A simple approach for describing metal-supported cyclohexaphenylene dehydrogenation
- **Filed:** QM/MM, 金属表面催化
- **Keywords:** dehydrogenation reaction ；cyclohexaphenylene； copper surface
- **Public Year:** 2010
- **Journal:** THE EUROPEAN PHYSICAL JOURNAL B
# Abstract#
- ## Background: 
	- 本文主要研究了用cyclohexaphenylene (CHP)脱氢变为单层石墨烯前体TBC (tribenzocoronene) 的过程。
- ## Method:
	- 主要使用CP2K的QM/MM功能，Cu基板采用分子动力学方法，Cu-Cu之间的势函数采用EAM来描述，Cu基板上面部分采用精确的DFT计算
	- 如图所示便是整个过程中的中间体形成过程。通过连续脱去氢分子，最终性形成TBC.本文研究体系为十层铜基板（2880个cu原子），基板上面是一个CHP分子。因为体系过于庞大，无法全部用密度泛函理论进行计算，所以对Cu原子使用经典分子动力学，对CHP分子采用标准准密度泛函理论进行计算。![[Pasted image 20230518155427.png]]
	- 具体的力场描述：Cu原子之间采用van der Waals attraction+EAM(embedded atom model). CHP分子和Cu之间采用Lennard-Jones势。CHP分子采用标准准密度泛函理论（BLYP/PM6）进行计算。
# Result #
- ## 基板:
	- 基板不仅可以对吸附的分子进行几何约束，还可以进行热交换色散力可以影响分子的平面特性，从而影响反应机制。![[Pasted image 20230518155534.png]]
- ## 外势:
	- 在本次的分析的水平中不存在化学催化作用，也假设铜原子不和分子进行反应。主题思路并不是为了最优化化学反应路径，而是寻找与实验相关的可能的反应情况。为了获得比较长时间的轨迹运动，采用计算资源较少的PM6,然后对演化过程中出现的相关结构进行标准DFT优化。
	- 为了使分子动力学模拟的过程中，不至于陷入最小值点而无法做到全局优化，每隔一个时间频率将会对体系添加一个外势，是体系进入一个随机的点开始。![[Pasted image 20230518155821.png]]
# Conclusion #
- **Thinking:** 为了避免分子动力学模拟过程中陷入最小值点，每隔一定时间就对体系加一个外势的方法可以不可以以其他方式来体现，比如隔一段时间就升温然后再降温，以便全局优化。
