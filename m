Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9851E8A67A
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 20:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDLymoSFAhThP0iVJ0n9mZHJAfMKhGqvKfDLTPW//Yc=; b=W/o1NGbUsz/F3T
	5VowTYxGb2muv5Y8f9XSUvz7HxiqX32dkhHu21BV+Xt9aF/dnvrxbnN5IRq0lk2sPX+UwBQkVfOpa
	6wh4gTgVWm7t7d8XV+rrbFi5sOJ0QtS357GGacJlksTXz0ZCIUeAfJ/FgZ5B3uzqeCoZgwNbYMzsz
	gh8l+DOwZVup0HZsTaamBdTUuHmXT9Qw1Xv0YMWKRbmU1hSvYaImkBJHR/dzfig2c1CKt5jx0VLRq
	Qt7/s8NiJymsrua65jd/EiqLG2AXTb6Vvo20ismLvOs9j+bv8S8FBSn38+gYlV+a9SuTEnLRL7iLw
	EpahhVoh/oVL0u7NEf9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxFKT-0003C5-S6; Mon, 12 Aug 2019 18:46:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxFKO-0003B0-SU
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 18:45:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8578028A489
Message-ID: <35a308cc5b499e5bbec8017b5b641a5f88c40be9.camel@collabora.com>
Subject: Re: [PATCH v4 00/11] media: hantro: Add support for H264 decoding
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org
Date: Mon, 12 Aug 2019 15:45:42 -0300
In-Reply-To: <1565606519.5017.5.camel@pengutronix.de>
References: <20190808103432.12062-1-ezequiel@collabora.com>
 <1565606519.5017.5.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_114557_174661_AB3E55A9 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 12:41 +0200, Philipp Zabel wrote:
> Hi Ezequiel,
> 
> On Thu, 2019-08-08 at 07:34 -0300, Ezequiel Garcia wrote:
> > This series is consolidating the two recent H264 series submitted
> > by Boris [1] [2]. Given some patches from [2]  have been merged (namely,
> > helpers for the Hantro driver), the series contains the remanining
> > bits required to support H264 on Hantro G1 VPU.
> > 
> > * Patch 1 adds support for the sort_r() variant and has
> >   been posted separately by Rasmus. It would be good to merge this patch
> >   via the media tree, ideally as soon as possible, to avoid the
> >   synchronisation burden that might appear if we decide to delay it.
> > 
> > * Patch 2 to 4 extends the H264 uAPI, introducing frame-based vs slice-based
> >   decoding granularity, and also support for different NALU start codes.
> >   Currently, Annex B and no start codes are the supported options.
> > 
> >   With the introduction of the start code control, the H264 parsed
> >   slices pixel format should be renamed, dropping the _RAW suffix,
> >   which is now meaningless.
> > 
> > * Patch 5 removes the P0/B0/B1 ref lists from the decode_params control.
> >   These lists are no longer needed since we build them on the
> >   kernel side based on the DPB.
> > 
> > * Patch 6 and 7 exposes the proper decoding mode and start code
> >   on the cedrus driver. The driver functionality is not changed,
> >   and only the Cedrus support is now being properly exposed to
> >   userspace.
> > 
> > * Patch 8 is needed to properly propagate the OUTPUT buffer timestamp to
> >   the CAPTURE buffer one, which is required for intra-frame references.
> > 
> > * Patches 9 to 11 adds H264 support for Hantro G1 and then enable
> >   H264 decoding on RK3288.
> > 
> > This series has been tested using MPV/Ffmpeg, on Rockchip RK3288
> > for Hantro and Allwinner H3 boards for Cedrus.
> 
> Tested-by: Philipp Zabel <p.zabel@pengutronix.de>
> 
> on i.MX8MQ EVK using [1], so I effectively patches 1-5 and 8-10, with
> your FFmpeg modifications [2].
> 
> [1] git://git.pengutronix.de/git/pza/linux.git hantro/imx8m-wip
> [2] https://gitlab.collabora.com/ezequiel/ffmpeg stateless-mpeg2-vp8-
> h264-v4
> 

Glad to hear things work properly. I'm adding your tested-by to all
patches except those that apply to cedrus and rk3288.

Thank you very much for the test,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
