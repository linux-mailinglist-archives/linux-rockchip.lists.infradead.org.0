Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851CE165984
	for <lists+linux-rockchip@lfdr.de>; Thu, 20 Feb 2020 09:45:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTpMHqPTyxXyNpoQCmie1dKP5HzrUYGgbdzYdC1dehI=; b=F0anXoNNTQg82w
	vC+ltEa/ex76wCJhTDaqq3B7opOrzai5IiknkT6jAPKmYHKfCXR5U67U7AxunyDgEvfpTXRZq3DTx
	U0Eden1e5rhg4qS67vRXI0cNKUTD7rIKgDIChzcQ1MGwD13TfoA68bbiPHhettWoKjEtiD0fo+QNm
	IzTmL5P93uWBlYi1YNbYlnLMUofAL+difIHHY2KbPI81UpXwA5b/uR0BHespjMx1FdlxJndCnz80G
	LGe6VOwvSMg4rroeTpL/R8jYoCKoE9KYEIfvr5hhRx4NB5bMaroAKzch5Ivb5ypStBk4M3QkFOWAJ
	Y4KMkR4dBsXnBSHkdnPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hSw-00059b-6n; Thu, 20 Feb 2020 08:45:50 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hSs-00054Z-Ea
 for linux-rockchip@lists.infradead.org; Thu, 20 Feb 2020 08:45:48 +0000
Received: from [192.168.2.10] ([46.9.235.248])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 4hSkj9f9DyIme4hSnjicPj; Thu, 20 Feb 2020 09:45:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1582188341; bh=n1KovKvq/q7CIfGUBL0d+FJ4p0KVxipSS2I4qj0qbjY=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=jeXfjP86TikbtpD3J5VM+gOlslNigQ3trmHXSBe5ZjocZN9D33MAOue90O/UO7ahl
 QToWoYt+tLkBWWswLNeClIk9egzyswdF+oy5dwSejQSY0BcUpxs/IAoJAyIhFS2iS+
 PKc3xqtMswCYD3RytkalsISdAJFmcCZkn1V/guato+ZS6D1GiQdxtPqaG+t7KH8e0Y
 i1MIalfnweVfP2rkNTy1sXrq33fq188GTrjmMjy0rtgKuUwQipNchR1zxnWC6A38TT
 VPOkjOHL6qN9/w82j0cWR83XvGidJ+yMKLROgJpKeGkf1YMOQYMQCJ01O7t/u8bYBt
 rb04LfTm6G9ZA==
Subject: Re: [PATCH v5 0/6] media: rockchip: Add the rkvdec driver
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20200219173750.26453-1-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <933b8189-5541-a7ff-e1dc-05ca3b2d65d5@xs4all.nl>
Date: Thu, 20 Feb 2020 09:45:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219173750.26453-1-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfCIE1D8IrPKqAzrx2WDTcm5C6VJb1hktJWZM2wFnyVwAi4U00BlQBVxdgIrnegfo5ze+3BZKzUXGO8cxlQPs5vQti08iUW+80WqJLRhT7RuAtfoIcdBb
 ZUnK6dj/BIP++yf1V8jAqwrbUNUW9rpw23QgJrzuDbPeyb0ps1YcvTiN/ZTeK89vspQ5tttTtSjovKQWR9lHx39MEFbFie9iFjuuMLr4dU2rwgbuvquEnzEP
 HglOUv8e44p712AelnuV0P2kvDnUyqSXo40pTKjhCJcQYjSMeG9LRzohRMDpggUH9l5I71WrLaFl3pZ8s/2VgIAt0RD+HBQaXAZtrMu9rR80TNjGD88Rr4io
 sxDhTfuqN/1Izqg4ExpWJxktDZnwijHzyYTf+EjUN3R8BjLYZhYOdTb2YHHi5sTbOiefVXME4ajMs2SQ//FdTruIrJCXnbaVJK5u3OtO+Al0ortWFWGu2IU3
 RACIZovXQUNdrkfZUeUOCuL+MB7BjBpv/2Oan0zw1An3ln0f6Et+gDESrxg4XHXv7xGwwO0k8fAOxtL/IedjKvKT4ei5kLADE1Ob2RwhaEE+ilGzBHq6uyGO
 y+QclkE4lAHfE2YQkJFkDz1CQiqYFVX9sugqg/6C1+MrKgusnLo70Stp5xFXpQiGPWP1u16KgdhwLk6y2NqfjQPNX1ffJIvi+z6reco8M0Q8/g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_004546_653852_63BCD067 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.22 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 2/19/20 6:37 PM, Ezequiel Garcia wrote:
> Hello,
> 
> This is v5 of Boris' rkvdec driver.
> 
> This version corrects wrong copyright notices and then adds
> a TODO file for the staging driver. The only reason to keep the
> driver in staging are the staging uAPI controls.

I got some sparse warnings for this series, should be trivial to fix:

sparse: WARNINGS
drivers/media/v4l2-core/v4l2-h264.c:214: warning: Function parameter or member 'reflist' not described in 'v4l2_h264_build_p_ref_list'
drivers/media/v4l2-core/v4l2-h264.c:214: warning: Excess function parameter 'p_reflist' description in 'v4l2_h264_build_p_ref_list'
SPARSE:drivers/staging/media/rkvdec/rkvdec.c drivers/staging/media/rkvdec/rkvdec.c:561:22:  warning: symbol 'rkvdec_queue_ops' was not
declared. Should it be static?

Also, checkpatch.pl --strict complains about empty trailing lines in two
files.

Together with the missing MAINTAINERS it is probably best if you post
a v6.

Regards,

	Hans

> 
> Thanks,
> Ezequiel
> 
> Boris Brezillon (5):
>   media: v4l2-core: Add helpers to build the H264 P/B0/B1 reflists
>   media: hantro: h264: Use the generic H264 reflist builder
>   media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
>   media: rkvdec: Add the rkvdec driver
>   arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node
> 
> Jonas Karlman (1):
>   media: uapi: h264: Add DPB entry field reference flags
> 
>  .../bindings/media/rockchip,vdec.yaml         |   71 +
>  .../media/uapi/v4l/ext-ctrls-codec.rst        |   16 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
>  drivers/media/v4l2-core/Kconfig               |    4 +
>  drivers/media/v4l2-core/Makefile              |    1 +
>  drivers/media/v4l2-core/v4l2-h264.c           |  258 ++++
>  drivers/staging/media/Kconfig                 |    2 +
>  drivers/staging/media/Makefile                |    1 +
>  drivers/staging/media/hantro/Kconfig          |    1 +
>  drivers/staging/media/hantro/hantro_h264.c    |  237 +---
>  drivers/staging/media/rkvdec/Kconfig          |   15 +
>  drivers/staging/media/rkvdec/Makefile         |    3 +
>  drivers/staging/media/rkvdec/TODO             |   11 +
>  drivers/staging/media/rkvdec/rkvdec-h264.c    | 1154 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec-regs.h    |  223 ++++
>  drivers/staging/media/rkvdec/rkvdec.c         | 1134 ++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.h         |  123 ++
>  include/media/h264-ctrls.h                    |    2 +
>  include/media/v4l2-h264.h                     |   86 ++
>  19 files changed, 3126 insertions(+), 230 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>  create mode 100644 drivers/media/v4l2-core/v4l2-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/Kconfig
>  create mode 100644 drivers/staging/media/rkvdec/Makefile
>  create mode 100644 drivers/staging/media/rkvdec/TODO
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec.h
>  create mode 100644 include/media/v4l2-h264.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
