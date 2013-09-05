% Samping Distributions of the Sample Mean
% Carson Sievert
% 2/26/2013

## Some Motivation

<div align="center"><img src="http://i.imgur.com/sZ3Xepy.gif"></img></div>


## Learning Objectives

#### Given a population from which we take a random sample:
  * understand that the sample mean is random before we take the sample.
  * understand that there are many possible random samples and that the sample mean will be different with every sample.
  * understand that the sample mean is no longer random __after__ we take the sample.
  * understand that if we take all possible samples of a __fixed sample size n__ and plot all resulting sample means in a histogram we have the sampling distribution of the sample mean. 

## Learning Objectives (part 2)

#### 2.  Given a non-normally distributed population from which we take random samples of a large enough sample size $n$:
 * understand that the sampling distribution will be a normal distribution (or at least close to a normal distribution). 


## Extending Chapter 12

1. Before we assumed the population is normal with some mean and variance: $X \sim N(\mu, \sigma^2)$

2. Instead of drawing one observation from the population ($X$), we now draw samples of size $n$ and calculate the sample mean: $\bar{X}=(X_1+X_2+...+X_n)/n$

3. For now, we still assume the the population mean ($\mu$) and population variance ($\sigma^2$) are known.

4. 'In real life', the population can be *non*-normally distributed! Note that this does not imply that $\bar{X}$ is not normal. In some cases, $\bar{X}$ can still be normal!

## Why do I care?

1. Suppose I'm interested in some probability, say $P(\bar{X}<5)$
  * I won't always be able to calculate this quantity! In order to do so, $\bar{X}$ has to be normally distributed (see point 2 and 3 on next slide).

## The Essentials

1. $\bar{X}$ is a random variable, so it will always have a mean and variance!
  * We denote it's mean $\mu_{\bar{x}}$
  * We normally assume $\bar{X}$ is unbiased, meaning $\mu_{\bar{x}}=\mu$
  * The variance of $\bar{X}$ is $(\sigma_{\bar{x}})^2$=$\sigma^2/n$.
  
2. If we know $X \sim N(\mu, \sigma^2)$, then $\bar{X} \sim N(\mu, \sigma^2/n)$.

3. If $X$ is *not* normally distributed, then we have two cases:
  * If $n<30$, $\bar{X}$ is also non-normal: $\bar{X} \sim (\mu, \sigma^2/n)$.
  * If $n \geq 30$, $\bar{X}$ is normal: $\bar{X} \sim N(\mu, \sigma^2/n)$.
  

## Back to the Notes

1. Today we talk about **the sampling distribution of the sample mean** and it's special properties.
2. The notes are designed to help you understand the concepts behind the essentials presented on the previous slides.



