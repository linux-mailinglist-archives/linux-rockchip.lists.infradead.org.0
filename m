Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE87874EAE
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 14:59:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fJQNL0VaZ06GMt+xdlZbgxunXfGkpwyYxpINRVlk1ro=; b=KiSPn3ourGJwSc
	9sj7jghy4r8js+jusR4JLa3lWGE4GEeOdNCLOu5GyuSPi03sI0PDgnglRE3yiUADYEnP0phGlapKH
	TqJOpeJRvjKn/mP4E2NrhYAPF4zQOXLIeTEU72CE0JRX2087WzKKCQOxmNmHtnARDitkP0DUKxRo7
	athX0t+FdcXkBW27rJdwGzZhCnxitwc2arkKE3FP5tYBaclIu4Wb8saFyxU30x51juUQVFEW82gcr
	BxxyDtOFk3lf9fclatqcb3SDkpBhO0nob5hzT/kWOInxpLK6K6K76f0P3BSXvGjW1JYeHlpmGJPfy
	FuYODkZFT1itG2/MJxdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdLR-0005Jo-Hs; Thu, 25 Jul 2019 12:59:41 +0000
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdLM-0005J9-UM
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 12:59:39 +0000
Received: from [IPv6:2001:420:44c1:2579:64cb:e917:d1ce:4f27]
 ([IPv6:2001:420:44c1:2579:64cb:e917:d1ce:4f27])
 by smtp-cloud7.xs4all.net with ESMTPA
 id qdLBhEcaaLqASqdLEhTpVV; Thu, 25 Jul 2019 14:59:31 +0200
Subject: Re: [PATCH 0/7] hantro: Add RK3399 VP8 decoding support
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>
References: <20190724171702.9449-1-ezequiel@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
Date: Thu, 25 Jul 2019 14:59:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190724171702.9449-1-ezequiel@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfH91+GSCR9/BQ6o5MVMi8O1vy+fYBT8pfW7voO0zSMsUL/0FoUIfCsRdCer6unCd3zmVDWduneqT8untxNKbfwUDD6zeR30I/mWIt+H5JH5JV6aFt3Ns
 mebj0wkIAzROiH99iss3dQxTRTr6M8q8jDR5mK5PhjPdMfgmsLT/weZJ/M64eB0YEPJozJdlg0rPFiA0UiYy0/KvPaJaTvZBnzhunjpHuCim0YhoHm7EKQWb
 4lEyOEjzOZzRC6ADMMp1ncXoQALIFxtlIOg1ueb9RjvcuFZSF9SvFxMwdjO4jiL2qP7dva5mKzRNYtq8tcuORYZ5dGcoGRDol6NRK5BYFB1hCSy0QOuZ6E/u
 et6/0+bQuPcpTZeWzvPZ63UBC8um/HLQEIIM2RxvpVFO/RqORAMUjmuVKX6VOmlV0Brb3gEQV0+tr7/5NCp149iYNlLXi0P7I5zyj4UuCMTZGx5rVpCSkD3i
 4Y/AoeWBbZ7T/5W4slLL0sLVLRxl+XfQFDNrQ3B6ay/2xODlw/+VPb6EsPPPgHz9IePfdSQyMTpsgRcvkTy0A3HiuMuvQ8o4oCPuDx+S7pk3mRRLvZmEhe16
 ZQFiIrzs2PhW5IC17EiAG1yhpLXU0eIHcg5dFhpvPSQr0aWwuUtQjj4zL7eSlXKvRmLHU7twDPiGPUQsF5l6mR3bGu2SZkR8bfsnt50RxiCCFUXwktXHvTdG
 T3IGCaNCHD0ynrqgpuETywVduNEEDsXUB4BIIb72u/zM65uPDZ3NKFzvPTcFPoRrdxsQ+Ur4gvNQY7nBRZA3cxtKKjSigmRk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_055937_138372_24A48DA4 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.24 listed in list.dnswl.org]
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
Cc: fbuergisser@chromium.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 7/24/19 7:16 PM, Ezequiel Garcia wrote:
> This series adds VP8 decoding support on RK3399 SoC.
> 
> I'm including a set of commits from Boris' recent H264 series [1].
> These commits add some helpers that are also useful for RK3399 VP8,
> and at the same time cleanup the driver nicely.
> 
> Finally, there's a fix by Francois Buergisser from Chromium team.
> 
> VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.

I get this when compiling:

/home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c: In function 'hantro_g1_vp8_dec_run':
/home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c:435:26: warning: variable 'vb2_src' set but not used [-Wunused-but-set-variable]
  struct vb2_v4l2_buffer *vb2_src;
                          ^~~~~~~
  CC      drivers/staging/media/omap4iss/iss_csiphy.o
/home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c: In function 'rk3399_vpu_vp8_dec_run':
/home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c:515:26: warning: variable 'vb2_src' set but not used [-Wunused-but-set-variable]
  struct vb2_v4l2_buffer *vb2_src;
                          ^~~~~~~

Can you take a look?

Thanks,

	Hans

> 
> [1] https://patchwork.kernel.org/cover/11003971/
> 
> Boris Brezillon (4):
>   media: hantro: Simplify the controls creation logic
>   media: hantro: Constify the control array
>   media: hantro: Add hantro_get_{src,dst}_buf() helpers
>   media: hantro: Add helpers to prepare/finish a run
> 
> Ezequiel Garcia (1):
>   media: hantro: Move VP8 common code
> 
> Francois Buergisser (1):
>   media: hantro: Set DMA max segment size
> 
> Jeffy Chen (1):
>   media: hantro: Support RK3399 VP8 decoding
> 
>  drivers/staging/media/hantro/Makefile         |   1 +
>  drivers/staging/media/hantro/hantro.h         |  15 +-
>  drivers/staging/media/hantro/hantro_drv.c     |  53 +-
>  .../media/hantro/hantro_g1_mpeg2_dec.c        |  14 +-
>  .../staging/media/hantro/hantro_g1_vp8_dec.c  |  34 +-
>  .../staging/media/hantro/hantro_h1_jpeg_enc.c |  11 +-
>  drivers/staging/media/hantro/hantro_hw.h      |   7 +
>  drivers/staging/media/hantro/hantro_vp8.c     |  15 +
>  drivers/staging/media/hantro/rk3399_vpu_hw.c  |  22 +-
>  .../media/hantro/rk3399_vpu_hw_jpeg_enc.c     |  12 +-
>  .../media/hantro/rk3399_vpu_hw_mpeg2_dec.c    |  14 +-
>  .../media/hantro/rk3399_vpu_hw_vp8_dec.c      | 597 ++++++++++++++++++
>  12 files changed, 711 insertions(+), 84 deletions(-)
>  create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
