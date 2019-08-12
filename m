Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C03AF89BBE
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 12:42:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJmrqQ25nokKFhFoBXmfYqyQ+2/5wTiqqRHjp6v0ito=; b=ioW09/nSGtru+c
	G8rQU8vJ2YSMZ8FnGw+7mmSE6RDATam9HQ2Ndpcsa451Fk8Ok8SyzFg4RIk25dxDC3H4Qppx05JjD
	hH4LNHxhnG1OWD2TzkPzMeXVBncTDAvdnpKiVgoLCQIk8PI6WWtNlRK0MKfQT+fd7fq0CRo9bB6Yb
	l1nhurt4Yd54WkXkYc2oaIprpwvUvT4ODt1VtlgjC4uVCxthqm7Bc8XK585QqooUl3PrP6iMxxTAd
	P4gCeBxMfJx5EkBXQiNvCp4IUAuaH8q5I8F2Pn0hWdVoJPKdmKrh91B2cj1KET/QJnFpgAo+82xNh
	CoVXkQHOpcNI8uRSTaOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7mC-0005Ia-1G; Mon, 12 Aug 2019 10:42:08 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7m8-0005I6-Ik
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 10:42:06 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1hx7m5-0000ZP-60; Mon, 12 Aug 2019 12:42:01 +0200
Message-ID: <1565606519.5017.5.camel@pengutronix.de>
Subject: Re: [PATCH v4 00/11] media: hantro: Add support for H264 decoding
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Date: Mon, 12 Aug 2019 12:41:59 +0200
In-Reply-To: <20190808103432.12062-1-ezequiel@collabora.com>
References: <20190808103432.12062-1-ezequiel@collabora.com>
X-Mailer: Evolution 3.22.6-1+deb9u2 
Mime-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_034204_620772_030637ED 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Ezequiel,

On Thu, 2019-08-08 at 07:34 -0300, Ezequiel Garcia wrote:
> This series is consolidating the two recent H264 series submitted
> by Boris [1] [2]. Given some patches from [2]  have been merged (namely,
> helpers for the Hantro driver), the series contains the remanining
> bits required to support H264 on Hantro G1 VPU.
> 
> * Patch 1 adds support for the sort_r() variant and has
>   been posted separately by Rasmus. It would be good to merge this patch
>   via the media tree, ideally as soon as possible, to avoid the
>   synchronisation burden that might appear if we decide to delay it.
> 
> * Patch 2 to 4 extends the H264 uAPI, introducing frame-based vs slice-based
>   decoding granularity, and also support for different NALU start codes.
>   Currently, Annex B and no start codes are the supported options.
> 
>   With the introduction of the start code control, the H264 parsed
>   slices pixel format should be renamed, dropping the _RAW suffix,
>   which is now meaningless.
> 
> * Patch 5 removes the P0/B0/B1 ref lists from the decode_params control.
>   These lists are no longer needed since we build them on the
>   kernel side based on the DPB.
> 
> * Patch 6 and 7 exposes the proper decoding mode and start code
>   on the cedrus driver. The driver functionality is not changed,
>   and only the Cedrus support is now being properly exposed to
>   userspace.
> 
> * Patch 8 is needed to properly propagate the OUTPUT buffer timestamp to
>   the CAPTURE buffer one, which is required for intra-frame references.
> 
> * Patches 9 to 11 adds H264 support for Hantro G1 and then enable
>   H264 decoding on RK3288.
> 
> This series has been tested using MPV/Ffmpeg, on Rockchip RK3288
> for Hantro and Allwinner H3 boards for Cedrus.

Tested-by: Philipp Zabel <p.zabel@pengutronix.de>

on i.MX8MQ EVK using [1], so I effectively patches 1-5 and 8-10, with
your FFmpeg modifications [2].

[1] git://git.pengutronix.de/git/pza/linux.git hantro/imx8m-wip
[2] https://gitlab.collabora.com/ezequiel/ffmpeg stateless-mpeg2-vp8-
h264-v4

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
