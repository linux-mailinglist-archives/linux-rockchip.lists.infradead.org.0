Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C4446FDD
	for <lists+linux-rockchip@lfdr.de>; Sat, 15 Jun 2019 14:12:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UXCNrnEodcHe9nsB90BICB4L8wUjCwu2um8Up5MeR74=; b=P91Sj9yTW1cPa4SLY2M3CxeKm
	OxamGnfEfu7jGqLSCDmwsbCog003cLGOCi+yIAO0ZIeEyxJJC2tySoipFEz6/mz1dFd9GRCso6mM5
	7XhvHtpbPaIkW9Et8uUOLnX1+4nAPI8MYE77DCGXEjr1VH2CJ2w8md5vkOKTu68gwrV/Cp4y9Q7ua
	rZGtxTr+QVufFPYJFGuitAn8lAz2XHbhyK1qyLpU5fod7OzCfYEY7WK3NceWbrDwzi+RLpIVr0E/F
	7eo3M1Gj18WOWiqKiaTDiuGKp116KGF8ekG3eVhxOm3sD2VDUayMqg1o45JOUdbTihC5xBP6omMT8
	YVj3FK13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc7YD-0000x0-1G; Sat, 15 Jun 2019 12:12:53 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc7Xz-0000pe-M3; Sat, 15 Jun 2019 12:12:41 +0000
Received: by mail-qk1-x741.google.com with SMTP id b18so3409709qkc.9;
 Sat, 15 Jun 2019 05:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=inRr4CIO+m2MnMN+UoknQRa/5PVtmKpMFRVNhhThkrA=;
 b=jjCiZX5E0qW6WES3BwYF3kpVF0I32Bl8mV4LQP22iER/ygXFQi3ggLvAt9Cy82w6ds
 CO0+XzmYagn1XgEJv15bI2c8patMC0eBUJknratHBcXQAuq6l6wkLRsnYLW5t4GYsWzF
 XBoX62ScD1h1njfG2SHMtHb/4r4Y1H9kMw4sg3kloM3HGoVV//OQwQ98V3+ce/XnoCkK
 njtPUN8WcYWrdZRlh7OaKfWAjbwiHlHhfucxQNX/0KX58ShnEBXLVQtNBIQkndkafBJY
 5bxrVgG9wWMfwaHLJA6rOE25BIFJgnauPfl7bnm0T9FKmCdo0VgF8tyNYoUIVt4hMsoG
 3Smw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=inRr4CIO+m2MnMN+UoknQRa/5PVtmKpMFRVNhhThkrA=;
 b=DYFCUdjcZ5uwKVzBDBkbT2/gJediZhzE6QI/75ElsyHB1W5k3NtAM7gxMaw+qAkcIH
 0YZ6N0H37Bm+vVlcsEVqMPRLTRK/YpJG2A656PSNw2CmO6oMwdBl+nij+kNRDSgzRyS4
 VkoGQsQYH0ef16+j2NxQPBmxJxKbPS2CdHNvhtrBDSDebqSphrQC6TB+gMrkfot0S37w
 lwCo/jmIOTKJ2vem1r+/TL7fkovy6zxQI3sUcxy8Tml7G/qB4yVqGiPoly6DM9jd0Xi5
 SmyxYc7KLS2lqloTZ2OV8UCtprFdNZ0L+D1XLHfABTK6Tc97D9tsBNb/XKXWBpxm03uj
 9rVw==
X-Gm-Message-State: APjAAAXlAmFfQh4a6GOgVLUyJgYsrBm4mmdzhkZlyMzFVAktyAM8Iu2U
 /gaRnCEfVMjRaQa0ckohCJ0yNXtG4RI=
X-Google-Smtp-Source: APXvYqyiTf3HnTZs3MMs7IAw0mHRPbED9YwhOkFchUCDomSUrB04yrQpaHrMXLkrdEO4inE5zz5nnw==
X-Received: by 2002:a37:5942:: with SMTP id n63mr67499055qkb.69.1560600756482; 
 Sat, 15 Jun 2019 05:12:36 -0700 (PDT)
Received: from ?IPv6:2601:153:900:ebb:d1e6:5a48:e4d5:c6a6?
 ([2601:153:900:ebb:d1e6:5a48:e4d5:c6a6])
 by smtp.gmail.com with ESMTPSA id p64sm3169167qkf.60.2019.06.15.05.12.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Jun 2019 05:12:35 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii
 performance.
To: "Leonidas P. Papadakos" <papadakospan@gmail.com>
References: <20190607123731.8737-1-pgwipeout@gmail.com>
 <1559912295.22520.0@gmail.com>
 <CAMdYzYorvWr1YhmFKaMQUCditjop5AZp4d1tO79XsVr7m7HrMw@mail.gmail.com>
 <1560547631.1367.4@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Message-ID: <71dc10a5-1024-d849-336e-476d183e5f46@gmail.com>
Date: Sat, 15 Jun 2019 08:12:36 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560547631.1367.4@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_051239_915667_58F20AC5 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jose Abreu <jose.abreu@synopsys.com>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 6/14/2019 5:27 PM, Leonidas P. Papadakos wrote:
> 
> 
>> The big change was actually snps,aal.
>> As per the TRM, DMA channels not address aligned have severe
>> limitations, if they work at all.
>>
>> Setting the DMA ops as address aligned fixed my 30mbps TX issue when
>> combined with your snps,txpbl = <0x4>.
> 
> Honestly, I don't notice any difference either way with aal. So what 
> happens without it? If You only use the 0x4 txpbl and having removed 
> thresh dma mode, (2 things then) do you get bad tx?
> 
> 

I'm unsure why, but I think there might be small variations in the 
different boards (Firefly, Libre).
On my board (Libre) with just 0x4 txpbl and thresh dma removed I get a 
whopping 30mbps.

Adding aal brought it up to 900 mbps.

I also had stability issues on rx, where it would bounce between 200 and 
400 mbps, which adding 0x4 rxpbl helped.
I still haven't been able to get rx above 400mpbs though.

It's definitely the MTU issue, since setting the max mtu to 1496 fixes 
most problems.

I have to wonder if the pl330 in the rk3328 is bugged, since all of the 
hardware that misbehaves (usb3, mmc, rgmii) require the dma engine.

If this works as a valid replacement for thresh dma mode, then I can 
submit it for merging.
I would like a few more people to test it first.

Anyone else with a rk3328-roc-cc board that can test this patch?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
