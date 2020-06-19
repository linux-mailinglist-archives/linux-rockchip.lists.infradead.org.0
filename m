Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 064922001CC
	for <lists+linux-rockchip@lfdr.de>; Fri, 19 Jun 2020 07:57:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcjWw5pkmy4c6gB3cXEiQd7x2J/zyz2CVniq85nUU+k=; b=syDv7pL/G92Cw+
	nlFgTMw6RpsguTR6vguONBNwEhO8zljjLME6RY6folyU/fBgkGz6Z5IEZKSpBHrLC62jOr1nhctN0
	+CKGaytdhG0pSnqffRBjUosJmNQb+TMt98RpdBlgn88yUWzy4QpYaYOMZmzl2j9OUGg6hoFrb2f/6
	K6jOjoeLBB9KoJbhJdQuakvJ1rOCFDbckJc/UWo8SLi3n4wFkbk6/dhZgxZdOVZgQwWcYDLXHHXVK
	AsBWZ4yfLvSq7VSBBQk35cQPL7TU1UIhWU3+FRMaKULP+3NF8PlQYmRlm1lmrWhGpFtPty7qsed5x
	H0A8+1QISt5nTfW0cWug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmA1n-0002U6-CN; Fri, 19 Jun 2020 05:57:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmA1j-0002TV-MU
 for linux-rockchip@lists.infradead.org; Fri, 19 Jun 2020 05:57:25 +0000
Received: by mail-pg1-x543.google.com with SMTP id b5so4029573pgm.8
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 22:57:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=vcoQU27veVgPOWd/0ckYZko/pX3wgLDFO82QmujnsUA=;
 b=SeqgTILRIJeeuWL+GE8nzrMopFxDyt/JNfmF486iyq/55jNuqxsAccNrdbdv5opOMj
 Cw3qYunXuIDd2VY5NGlEYPyiPM5XwZWEw+5l3uJLNtxvWG1elDUCcYsOPc2UxKlRwYrw
 drbAtdpy+YOPGGvUXO82Awgd2CBAexIBU9UcOB/8//phJB+1c75Y1uTodsEU8C7K+xUI
 an2BavnQWXoR/ffmARliRtdQvl1tPNNi/FcyC+2jopBNGa3IQqAbRHsryYEzw+Cj1k9G
 i1kVlE4RhUlf/I1Y+/7pWnhZpu7snhTdgbAlx9LJVQFuD2oToJygoSduU/Q8mlkfL1Fx
 55bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vcoQU27veVgPOWd/0ckYZko/pX3wgLDFO82QmujnsUA=;
 b=BYpET7Sc5DJlm4u74A9nO0ECt+ffcD3Vxjoox5tL4VRwUl61E+XT/psUWT5t7JWgm1
 6smwUY1a/rXFlwsEUt7Am+0tELnK1BePpVa+kuiXKjHiwFuwvnhw+Kv5/sFW/druKxBh
 Od6Baw4nIjslvaQRQ/N/Z6ol7Xlg+nSvxzDvQc7d+6m0p0IR159mQUNboVfjO+MJaW/d
 MA7fSBHDQ2om1ZnIje3a6FPlVG7DIdDvzCHpgT6zuflbJdNEFCu1RKCi/4CyI+j1pZmS
 HAX+g2S8toQctmOJWXDizjEWvD4FboCDwCUTVBlpgHAy1YXAr6UqmTfUp9Jmfm1Py2bz
 TTWA==
X-Gm-Message-State: AOAM532KT0YnCikHXxl4AHnT4STGh2rWHCToQiU+lUKlQwaGQHtU0se1
 cHJV1qtahfYJOMSgeIOweWC+4HJDMgM=
X-Google-Smtp-Source: ABdhPJz4MRK3ifLZfCXFaqSI4lm/LqkedTNZlXh7gAgSS7T865nY3qUJX8dSsfHTyUTvLewIMd3iRA==
X-Received: by 2002:a63:1f0e:: with SMTP id f14mr1559154pgf.405.1592546240182; 
 Thu, 18 Jun 2020 22:57:20 -0700 (PDT)
Received: from localhost ([122.172.119.132])
 by smtp.gmail.com with ESMTPSA id j130sm3859861pgc.75.2020.06.18.22.57.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jun 2020 22:57:19 -0700 (PDT)
Date: Fri, 19 Jun 2020 11:27:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH] thermal/drivers/cpufreq_cooling: Fix wrong frequency
 converted from power
Message-ID: <20200619055717.egfs23qywj4kmjok@vireshk-i7>
References: <20200619015126.15002-1-finley.xiao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200619015126.15002-1-finley.xiao@rock-chips.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_225723_732512_6354F9D7 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, amit.kucheria@verdurent.com, heiko@sntech.de,
 xf@rock-chips.com, amit.kachhap@gmail.com, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, linux-pm@vger.kernel.org, rui.zhang@intel.com,
 javi.merino@kernel.org, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 19-06-20, 09:51, Finley Xiao wrote:
> The function cpu_power_to_freq is used to find a frequency and set the
> cooling device to consume at most the power to be converted. For example,
> if the power to be converted is 80mW, and the em table is as follow.
> struct em_cap_state table[] = {
> 	/* KHz     mW */
> 	{ 1008000, 36, 0 },
> 	{ 1200000, 49, 0 },
> 	{ 1296000, 59, 0 },
> 	{ 1416000, 72, 0 },
> 	{ 1512000, 86, 0 },
> };
> The target frequency should be 1416000KHz, not 1512000KHz.
> 

Cc: v4.13+ <stable@vger.kernel.org> # v4.13+

> Fixes: 349d39dc5739 ("thermal: cpu_cooling: merge frequency and power tables")
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> ---
>  drivers/thermal/cpufreq_cooling.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/cpufreq_cooling.c b/drivers/thermal/cpufreq_cooling.c
> index 9e124020519f..6c0e1b053126 100644
> --- a/drivers/thermal/cpufreq_cooling.c
> +++ b/drivers/thermal/cpufreq_cooling.c
> @@ -123,12 +123,12 @@ static u32 cpu_power_to_freq(struct cpufreq_cooling_device *cpufreq_cdev,
>  {
>  	int i;
>  
> -	for (i = cpufreq_cdev->max_level - 1; i >= 0; i--) {
> -		if (power > cpufreq_cdev->em->table[i].power)
> +	for (i = cpufreq_cdev->max_level; i >= 0; i--) {
> +		if (power >= cpufreq_cdev->em->table[i].power)
>  			break;
>  	}
>  
> -	return cpufreq_cdev->em->table[i + 1].frequency;
> +	return cpufreq_cdev->em->table[i].frequency;
>  }

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
