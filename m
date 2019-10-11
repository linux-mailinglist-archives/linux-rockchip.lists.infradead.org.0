Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2A2D3C97
	for <lists+linux-rockchip@lfdr.de>; Fri, 11 Oct 2019 11:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IvfuP4zVFuEdPGf4NI/gB1Jsaig869Flfe9nnIenS3U=; b=KLwWLLVcFBeBfj
	1KZ3tFJbZAiF+iCOMVDFuPc75jelLKcpLL/zJVpDGhc++9OrVOtydYXA0U+808mFY5YQgShcwdtgo
	2The0vdFiXC1r4YX/9Ud3jMzVG7rKsrxUVOsLIVP8mDxcYqvUoZbFWXJMH2CrmO5tJEqNXhEuz7ax
	ePpX9wPpljvGno9uRW70CtBBe+PCubzLAPQpQ1x7ZiaGaT3Mjr00gjJU94Vcbk5j2SDRowZkePRFC
	ib7nFAoHXg7BgIpf78Qh5fFmHREPJ+BDE5Ki1aR811u5KxjIur3+xK7n+BHdm+YH3JtW/2WGovgAq
	mdtAHAz1le0twFuNTnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIrSZ-0005zW-DL; Fri, 11 Oct 2019 09:43:43 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIrSW-0005yi-DX
 for linux-rockchip@lists.infradead.org; Fri, 11 Oct 2019 09:43:42 +0000
Received: from [IPv6:2001:983:e9a7:1:611e:26b3:263e:a49f]
 ([IPv6:2001:983:e9a7:1:611e:26b3:263e:a49f])
 by smtp-cloud7.xs4all.net with ESMTPA
 id IrSCixrlejZ8vIrSDiROSP; Fri, 11 Oct 2019 11:43:28 +0200
Subject: Re: [RESEND PATCH v2 0/4] media: rockchip: Add the rkvdec driver
To: Boris Brezillon <boris.brezillon@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org
References: <20191011093342.3471-1-boris.brezillon@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <ea218a89-d844-4c56-595a-7359af3ef031@xs4all.nl>
Date: Fri, 11 Oct 2019 11:43:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191011093342.3471-1-boris.brezillon@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfGns4vyZwiSBPAvKunZeMisPm7fE5uIsriqWgYBihGwOUfuwGbQOTfOucakywQovqt+7xYagXzxO0ny/Ix5vxPUNgBEjwPmC154foKKcUpHaWToXAlsB
 gAjZbIj6m6HFBaTCVsrm3rbngPLlLlsqGebj37mDoyuS4ii15Umfs/WCX3hmcliu9Ou0A7+tit+llsJ3Cn4Ry6N9sDortrJCSZPk5nVI+6MFEJCJk4fcVwky
 y/1eHy7EjBrMv1QZUxpVASNI+pdRsWMmvMMjsi7S3bBFdlGPN7tF6PcMgBnQ8s8bS3DrzSpKnDzZeByL0FboDyPeQvmLZK2tKHAe/b1Doy7Mz77b7x+d0e8Z
 3fy8l3jjhOnh7zUrrXEJdXB8eMXfrkLC0S2A2Zt5Z8mbONRCtsxfIUUSe2wSr7vl57Kq52w4Z4geqzuPepbAZHuosDGqzCJHox62xPqF/XuGHjgKWrxUTWDr
 KZlDyeAKSccRBKYg19N/O1WuAfSVGfMaITgzn8iZwpIylifbovYm4y6kzW9xgdCYTeEHsud/ftSiskzMhE5f4l1mra+4WHe1l/XHANUYKVOpHO6xq1+gcFHw
 w04m8/Hr9JxySMfii9/d2RGM51Rkhyr/wDt+oK4EoFlyrvUpCLhcAZdh3CN1lnI19ujI/CM1kVUSmm0+ejptFadneMB8Qn32wQWuWznNjdSdnJxfb1JEMUPO
 /wARGa7WFiYTA6KMHytdpIlN9VmK6Y8pd1JNqzqps8inHcUsck6JXCPyIjr4Fn/OlTs5+5O8HjqRgLhz/2vrz5/C7KRF7Ha9E+J85Z2wmWIUxjTDDNhMHfHR
 kO+BrKs9/sRQ9GJx4Mg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_024340_623268_826D3317 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas@ndufresne.ca>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 10/11/19 11:33 AM, Boris Brezillon wrote:
> Hello,
> 
> Sorry for the noise, I forgot to Cc the DT maintainers/ML on my last
> attempt.
> 
> This is v2 of the rkvdec driver which was initially posted as part of
> my RFC adding codec helpers.
> For this version, I decided to get rid of the helper stuff which is
> likely to take some more time to settle. The patchset now contains a
> proper DT binding doc.
> 
> Note that this implementation is likely to be adjusted based on the
> outcome of the 'scaling matrix order' [1] and 'dynamic resolution
> changes' [2] discussions, but I thought it'd be worth posting this
> version to start getting feeback.

I assume this version of the driver does not (yet?) support slicing?

Core slicing support is part of this series:

https://patchwork.linuxtv.org/cover/59415/

Regards,

	Hans

> 
> Regards,
> 
> Boris
> 
> [1]https://patchwork.kernel.org/cover/11125207/
> [2]https://lkml.org/lkml/2019/9/3/1033
> 
> Boris Brezillon (4):
>   media: vb2: Add a helper to get the vb2 buffer attached to a request
>   media: dt-bindings: rockchip: Document RK3399 Video Decoder bindings
>   media: rockchip: Add the rkvdec driver
>   arm64: dts: rockchip: rk3399: Define the rockchip Video Decoder node
> 
>  .../bindings/media/rockchip,vdec.yaml         |   71 ++
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi      |   14 +-
>  .../media/common/videobuf2/videobuf2-core.c   |   23 +
>  drivers/staging/media/Kconfig                 |    2 +
>  drivers/staging/media/Makefile                |    1 +
>  drivers/staging/media/rockchip/Kconfig        |   16 +
>  drivers/staging/media/rockchip/Makefile       |    2 +
>  drivers/staging/media/rockchip/vdec/Kconfig   |   14 +
>  drivers/staging/media/rockchip/vdec/Makefile  |    3 +
>  .../staging/media/rockchip/vdec/rkvdec-h264.c |  960 +++++++++++++++
>  .../staging/media/rockchip/vdec/rkvdec-regs.h |  306 +++++
>  drivers/staging/media/rockchip/vdec/rkvdec.c  | 1089 +++++++++++++++++
>  drivers/staging/media/rockchip/vdec/rkvdec.h  |  131 ++
>  include/media/videobuf2-core.h                |   11 +
>  14 files changed, 2642 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>  create mode 100644 drivers/staging/media/rockchip/Kconfig
>  create mode 100644 drivers/staging/media/rockchip/Makefile
>  create mode 100644 drivers/staging/media/rockchip/vdec/Kconfig
>  create mode 100644 drivers/staging/media/rockchip/vdec/Makefile
>  create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec-h264.c
>  create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec-regs.h
>  create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec.c
>  create mode 100644 drivers/staging/media/rockchip/vdec/rkvdec.h
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
