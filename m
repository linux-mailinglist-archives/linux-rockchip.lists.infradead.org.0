Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EB874FB7
	for <lists+linux-rockchip@lfdr.de>; Thu, 25 Jul 2019 15:39:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=czBGR57UzRZ6ZNB+EnKmP/rWQIy8p9HF+3v8bx7wGSs=; b=VJf2UMZCdStJBo
	llxdNuzdu5CBup3UGldrKV6+cfPorwDkqNAPWzxPXpqRK4F4BOw+EhOOJgXHluc7yb7AaYEinXxcT
	77OcspmB28dBWh67eJC7OwxvfqXmDN9FYGCc7LRdcAlF2FY/qJxA5eHjX9cxii3233opulJIO15fW
	d0C+NjJdcckd5Yke+kvuP+N1Vi/0tvHlUwVZGH4aaOMdwm8J7ZjuMxbBsTuW8oSRK17eE79YLRXrk
	t7qDEoNt0+ZCbJjHoZVPHxM+EJk16XXNXEblTNR3gpTAjdXqFhMKS800OQTtfvJ210d5qtJuCsuoW
	qe77ikfQ8lfKtd0gNO4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdxs-0007sc-L3; Thu, 25 Jul 2019 13:39:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdxl-0007lX-UR
 for linux-rockchip@lists.infradead.org; Thu, 25 Jul 2019 13:39:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id F10C728B644
Message-ID: <4f0d0390057195da326354da2343c98c93d86669.camel@collabora.com>
Subject: Re: [PATCH 0/7] hantro: Add RK3399 VP8 decoding support
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, Hans
 Verkuil <hans.verkuil@cisco.com>
Date: Thu, 25 Jul 2019 10:38:47 -0300
In-Reply-To: <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
References: <20190724171702.9449-1-ezequiel@collabora.com>
 <b0cd9a4f-4bf9-a48c-6d7c-7147b13fa0b2@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_063918_429903_6E9FBE51 
X-CRM114-Status: GOOD (  11.64  )
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

On Thu, 2019-07-25 at 14:59 +0200, Hans Verkuil wrote:
> On 7/24/19 7:16 PM, Ezequiel Garcia wrote:
> > This series adds VP8 decoding support on RK3399 SoC.
> > 
> > I'm including a set of commits from Boris' recent H264 series [1].
> > These commits add some helpers that are also useful for RK3399 VP8,
> > and at the same time cleanup the driver nicely.
> > 
> > Finally, there's a fix by Francois Buergisser from Chromium team.
> > 
> > VP8 and MPEG-2 tested on RK3399 RockPi and RK3288 Rock2 boards.
> 
> I get this when compiling:
> 
> /home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c: In function 'hantro_g1_vp8_dec_run':
> /home/hans/work/build/media-git/drivers/staging/media/hantro/hantro_g1_vp8_dec.c:435:26: warning: variable 'vb2_src' set but not used [-Wunused-but-
> set-variable]
>   struct vb2_v4l2_buffer *vb2_src;
>                           ^~~~~~~
>   CC      drivers/staging/media/omap4iss/iss_csiphy.o
> /home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c: In function 'rk3399_vpu_vp8_dec_run':
> /home/hans/work/build/media-git/drivers/staging/media/hantro/rk3399_vpu_hw_vp8_dec.c:515:26: warning: variable 'vb2_src' set but not used [-Wunused-
> but-set-variable]
>   struct vb2_v4l2_buffer *vb2_src;
>                           ^~~~~~~
> 
> Can you take a look?
> 

Oops, I missed these warnings. I'll fix them and post a new version.

Thanks,
Eze


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
