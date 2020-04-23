Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CF91B5FDF
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 17:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IoJYLloX+F7seD7cpdJbcDuSerY6ub1Iclqu1Z2E4+g=; b=b8notnAgMH1uB90NHGDmF0zr7
	J9teJWEEpBhOgZT1jrIvFXVSWALMnqxBszG5WRKjJqWu6bELlOJdadRIzyz/4JkAHo+IJA0yGT2VB
	CRUDF0DAuom6zYazhGHWPLuWdN7wGWjkbL/2tOxYvVz7IYx9YJvTxYZpLHv2++Nli97vnqBuSVsq1
	GLdt50tQZ7QnYaIVJOQcxsRN43ZbJ6pIgsn+naZA4XXnlwswELpXSuAqql6EeKVy8dzVzWbf5to71
	dvnfmCEP6ng0LUt7PMkenG3NmgD31pK4oxWcKYvqnd74IF/uPB329ktro7Q/5VNwaARuT4HYfI+5s
	7+7ArwXoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRe6E-0005rs-9L; Thu, 23 Apr 2020 15:49:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRe6A-0005pt-W9
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 15:49:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C94F631B;
 Thu, 23 Apr 2020 08:49:09 -0700 (PDT)
Received: from [10.57.33.170] (unknown [10.57.33.170])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13C833F68F;
 Thu, 23 Apr 2020 08:49:08 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
To: Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
Date: Thu, 23 Apr 2020 16:49:06 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_084911_074306_257CBA62 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2020-04-23 4:09 pm, Peter Geis wrote:
> On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
>> The device-tree incorrectly limits us to gen 1.
>>
>> Correctly set the maximum link speed to <2>.
>>
>> Tested on the rockpro64.
> 
> Note, this was tested on the rockpro64 after I performed the hardware
> fixes as delineated at
> https://forum.pine64.org/showthread.php?tid=8374
> 
> We probably will have to drop this back to <1> on board specific dts
> files if issues are discovered.

I'd say commit 712fa1777207 and the fact that the current rev 1.8 
datasheet only mentions 2.5GT/s rather weaken that argument. It would 
seem safer to leave the default as-is, and only override it for boards 
where Gen2 really is proven to work reliably. Which, er, is already the 
case ;)

That said, "proven to work reliably" is itself a bit doubtful - my 
NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960 
NVMe, yet I've seen plenty of reports of other NVMe models being 
unusable with mainline due to failing link training ~90% of the time. 
It's a grey area for sure.

Robin.

>>
>> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 74f2c3d49095..e9efd330810b 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -248,7 +248,7 @@
>>                                  <0 0 0 3 &pcie0_intc 2>,
>>                                  <0 0 0 4 &pcie0_intc 3>;
>>                  linux,pci-domain = <0>;
>> -               max-link-speed = <1>;
>> +               max-link-speed = <2>;
>>                  msi-map = <0x0 &its 0x0 0x1000>;
>>                  phys = <&pcie_phy 0>, <&pcie_phy 1>,
>>                         <&pcie_phy 2>, <&pcie_phy 3>;
>> --
>> 2.20.1
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
