Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9867975413
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 18:30:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sWq5jjaxokMba6u4vV93L4bs6eTfemi8XSIaaLXVYE=; b=HnlBhgj4ReeoqA
	TXDtT1uN4CXdwl21ksextiFIJ/nl526heTY3yfelk+EfQ+Vsuf3NcweN0lt6bhjOLGl20ko+Z7NwE
	Tk0aAorih6DQK0I7kaTc0BrQVSdcV+Jwrykuqdry9CtaK1wqxf41N02O/rdJSHAm08n0siCI6XuWb
	RdPQFSqsR+eCMzr6v9ITcLEO4WSaWiF++0bvT3HzNOJwloFzYhnix++oNXKvwAWk/kt2Gfoi8/RNe
	YCRl5v4Qpx94LLC949LmxIIs+G3tXLsPxx2Mvv8brJJV3xus45teSIZjrapurN6R7WsWDdcPpFWyX
	EXsDb+fXLdU/P/gbd7/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgdO-00071R-CJ; Thu, 25 Jul 2019 16:30:26 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgdF-0006ve-MI
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 16:30:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9544928B55F
Message-ID: <92f197b5d45e5f250c001752b11749af2533f4c3.camel@collabora.com>
Subject: Re: [PATCH v2 6/7] media: hantro: Move VP8 common code
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Thu, 25 Jul 2019 13:30:07 -0300
In-Reply-To: <20190725132230.6e7f0c22@coco.lan>
References: <20190725141756.2518-1-ezequiel@collabora.com>
 <20190725141756.2518-7-ezequiel@collabora.com>
 <20190725132230.6e7f0c22@coco.lan>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_093018_159303_1F90A786 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: fbuergisser@chromium.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Alexandre Courbot <acourbot@chromium.org>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Hans Verkuil <hans.verkuil@cisco.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 2019-07-25 at 13:22 -0300, Mauro Carvalho Chehab wrote:
> Em Thu, 25 Jul 2019 11:17:55 -0300
> Ezequiel Garcia <ezequiel@collabora.com> escreveu:
> 
> > In order to introduce support for RK3399 VP8 decoding,
> > move some common VP8 code. This will be reused by
> > the RK3399 implementation, reducing code duplication.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../staging/media/hantro/hantro_g1_vp8_dec.c    | 17 -----------------
> >  drivers/staging/media/hantro/hantro_hw.h        |  4 ++++
> >  drivers/staging/media/hantro/hantro_vp8.c       | 15 +++++++++++++++
> >  3 files changed, 19 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> > index cd1fbd3a0d5f..181e2f76d8cb 100644
> > --- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> > +++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
> > @@ -16,8 +16,6 @@
> >  #include "hantro.h"
> >  #include "hantro_g1_regs.h"
> >  
> > -#define DEC_8190_ALIGN_MASK	0x07U
> > -
> >  /* DCT partition base address regs */
> >  static const struct hantro_reg vp8_dec_dct_base[8] = {
> >  	{ G1_REG_ADDR_STR, 0, 0xffffffff },
> > @@ -131,21 +129,6 @@ static const struct hantro_reg vp8_dec_pred_bc_tap[8][4] = {
> >  	},
> >  };
> >  
> > -/*
> > - * filter taps taken to 7-bit precision,
> > - * reference RFC6386#Page-16, filters[8][6]
> > - */
> > -static const u32 vp8_dec_mc_filter[8][6] = {
> > -	{ 0, 0, 128, 0, 0, 0 },
> > -	{ 0, -6, 123, 12, -1, 0 },
> > -	{ 2, -11, 108, 36, -8, 1 },
> > -	{ 0, -9, 93, 50, -6, 0 },
> > -	{ 3, -16, 77, 77, -16, 3 },
> > -	{ 0, -6, 50, 93, -9, 0 },
> > -	{ 1, -8, 36, 108, -11, 2 },
> > -	{ 0, -1, 12, 123, -6, 0 }
> > -};
> > -
> >  /*
> >   * Set loop filters
> >   */
> > diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> > index 34ef24e3a9ef..185e27d47e47 100644
> > --- a/drivers/staging/media/hantro/hantro_hw.h
> > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > @@ -15,6 +15,8 @@
> >  #include <media/vp8-ctrls.h>
> >  #include <media/videobuf2-core.h>
> >  
> > +#define DEC_8190_ALIGN_MASK	0x07U
> > +
> >  struct hantro_dev;
> >  struct hantro_ctx;
> >  struct hantro_buf;
> > @@ -93,6 +95,8 @@ extern const struct hantro_variant rk3399_vpu_variant;
> >  extern const struct hantro_variant rk3328_vpu_variant;
> >  extern const struct hantro_variant rk3288_vpu_variant;
> >  
> > +extern const u32 vp8_dec_mc_filter[8][6];
> 
> Please don't do that, as a symbol like that can easily cause
> namespace clashes in the future. For all exported symbols,
> please prepend the driver name, like:
> 
> 	hantro_vp8_dec_mc_filter
> 

Right. Would you be OK, with taking Hans' PR and accept a follow-up
patch fixing this?

Thanks,
Eze


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
