Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 689601B2849
	for <lists+linux-rockchip@lfdr.de>; Tue, 21 Apr 2020 15:44:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzHAnePbg+JkzlGGzf6n8450TFfVKeufXKDeB8dzO+k=; b=gbo6/7LYm6VOUA
	kEZESNlzPviSWRVL+hNPGi8P5Cqy7PDyaS7K/rtjhROfCLdfUBfaoI7vWHyOyC0UjHMkt7g/UAAzP
	3vXEA0VHRpFztgAIR2DhfYq4MwYLMrvM9tRURASORH9vk9OxJolsAjnscAOj+nF3RD414Z8GqxeHf
	wtFDAW2howhVBRX7mWZ/v55OQjxlSSrVK6G8KuJcX4xHJVWMcRYBh8MLQhMqPsAhHIAbLR3hetG1I
	yXEYQ5XWNtnBGBiqDYw+mo8N2CkENHVt4v2iFqZp6CVfW4kQX8yOPS6PLhCKZlxvPUxWmqmASkyNr
	nB35sRyW5y38dmTc56jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtCT-00079o-P1; Tue, 21 Apr 2020 13:44:33 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtCN-0006wR-K0
 for linux-rockchip@lists.infradead.org; Tue, 21 Apr 2020 13:44:30 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id QtC4jlYNblKa1QtC7j15or; Tue, 21 Apr 2020 15:44:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1587476655; bh=nzCZ64gPxIoM/j+JyeXGQ/ySy+plAMu9pIDfwkwYt6c=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=MGvCzKGiVXtR3xzMsKksuQC2abAPuOsl2d2sj01xJtAkH2mGZl6f9J+LipDrhUCFi
 fq+M033mKeIBN/bzdy5L+czBCVqGYxJalyfsrZIG1ZbkJAboJnZSKopzP/pp+uq4ZX
 SVrwC3v9uMwJJP99JV+o7mTCn2s4xiog/QixFL3SkaX3vT4opaUS2t71JNKe/ml652
 tnwmcg9wzldpnL2jMIV2aFJHPo+HgMjghCvvB27bX4Z9xGJ2CbXUkKMh8IctY9sG57
 B/2AmLr7CN3tqPwJSZPI++qWO5ahCzVxD23ys1C2rbMflHA7krh4qqPcqLPGjwzckq
 eTOxTjOQxnMhQ==
Subject: Re: [PATCH v4] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
To: Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de
References: <20200326191343.1989-1-ezequiel@collabora.com>
 <12f6d7cf-6af6-4f54-3188-65e73b703a72@gmail.com>
 <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <30717aac-f589-ffbd-aefb-07c2934f7a2e@xs4all.nl>
Date: Tue, 21 Apr 2020 15:44:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <9328212d-139f-6a0e-7d0c-3a5529a392f2@gmail.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfFOD3+wi8uRwj+8VMeKVJAVRmyaCf97nXh7DTYhJ/GTwnfn03wdMnQ2R6vwD2I2C30SNPt/yaF2SYIz2mc8V60m9aOERfxj+viHcuNDmX49kufGAyme4
 jBztzH57g3sFqQRuyxXEqwOWEsd0WEt3+jmlj0d7nLVV65O5lyqM5wUCkwNEJ0XMLt99HovguvLNV59IHn3rbKjIiEqP1gcS8ufKXbrfChZYzkQIRYCH59kN
 ddpzFS70DPlLbjMJqNZ8T0HheZVn5xGR8I05J5FbJzkvHxLpt8RI2RGGWYzR8v6f9P4xWdv3ZKq3V54jq0CHyR+lMIszB9qhNpzIfKYGcnuC/IAAMf2DkVkG
 ie6RUDNMi5+rrv3bqy2YyWDpoW3DSN6yLERrBy/TK9jIK1rILzwPdD/xqhJfdwu+i42mp0b+38cdCbwkYiRNTO9/S040gWLnoIJ7fxPtFKk1sQKcX+0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_064427_830236_C08704D0 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, robh@kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 21/04/2020 15:19, Johan Jonker wrote:
> Hi,
> 
> Question for the media maintainers Hans & Co. :
> 
> What's nxp,imx8mq-vpu.yaml doing under rga?
> Why is rockchip-vpu.yaml inserted under rga instead of vpu?

That's clearly wrong. Probably my fault when trying to resolve
a conflict.

Ezequiel, can you make a patch fixing this? It's probably a good
idea if you double-check these entries to make sure I didn't inadvertently
introduce more mistakes.

Regards,

	Hans

> 
> Johan
> 
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index f0e7b4d17fcc..0cfd86594b0b 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -14471,7 +14471,8 @@ M:	Jacob Chen <jacob-chen@iotwrt.com>
>>  M:	Ezequiel Garcia <ezequiel@collabora.com>
>>  L:	linux-media@vger.kernel.org
>>  S:	Maintained
>> -F:	Documentation/devicetree/bindings/media/rockchip-rga.txt
>> +F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
>> +F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
>>  F:	drivers/media/platform/rockchip/rga/
> 
> HANTRO VPU CODEC DRIVER
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> M:	Philipp Zabel <p.zabel@pengutronix.de>
> L:	linux-media@vger.kernel.org
> L:	linux-rockchip@lists.infradead.org
> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.txt
> F:	drivers/staging/media/hantro/
> 
> ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> M:	Jacob Chen <jacob-chen@iotwrt.com>
> M:	Ezequiel Garcia <ezequiel@collabora.com>
> L:	linux-media@vger.kernel.org
> S:	Maintained
> F:	Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> F:	Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> F:	drivers/media/platform/rockchip/rga/
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
