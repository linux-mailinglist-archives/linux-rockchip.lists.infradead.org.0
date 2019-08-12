Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1E789C00
	for <lists+linux-rockchip@lfdr.de>; Mon, 12 Aug 2019 12:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdW3qFpZlNeLcWYN9vxTGhcH7Apcr6P74mr/qHmBllQ=; b=k58JbLS7UKBaJr
	8buPAiWVZb7FgGPjGNaEo/VlHYxBxdcodEW8x2mYBfiF1NTV8mGVlv1F7yyEuK4CaqGRBFUxSuj4v
	UUtGzmhX9UWg0Jx65Zv4WV9KNhe6Fs3oFkIRUAD8mQf1vxmR5HWK0pu85ZDHDcXOiCiAXnUK/qugR
	DDBrDPtsRmIj/7dOfw2/OPFjceBhbpUDYJrC65bZjD+XkyUPIr2p4CyPekpmr8t0ZbKKGSV5eLbEw
	lx31UaTymTnX2985+b+VOViCzDqNjM1P06xQbFCZyL00bm3ULplTEeFrHRrFGo35TdFi8+6a4mzyN
	G0DOAbrOsiZiJlMikKBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7xW-0002J7-8G; Mon, 12 Aug 2019 10:53:50 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7xS-0002IH-B3
 for linux-rockchip@lists.infradead.org; Mon, 12 Aug 2019 10:53:47 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 6DF4E28BC11
Message-ID: <d71d504c2c73af04ce7a92c27f2d33f101c0cdf5.camel@collabora.com>
Subject: Re: [PATCH v4 05/11] media: uapi: h264: Get rid of the p0/b0/b1
 ref-lists
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org
Date: Mon, 12 Aug 2019 07:53:32 -0300
In-Reply-To: <62750a74-f856-c927-72a3-17d1a2624550@xs4all.nl>
References: <20190808103432.12062-1-ezequiel@collabora.com>
 <20190808103432.12062-6-ezequiel@collabora.com>
 <62750a74-f856-c927-72a3-17d1a2624550@xs4all.nl>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_035346_515253_25B3E5D9 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
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
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-08-12 at 12:20 +0200, Hans Verkuil wrote:
> On 8/8/19 12:34 PM, Ezequiel Garcia wrote:
> > From: Boris Brezillon <boris.brezillon@collabora.com>
> > 
> > Those lists can be extracted from the dpb, let's simplify userspace
> > life and build that list kernel-side (generic helpers will be provided
> > for drivers that need this list).
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> > Reviewed-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> > Changes in v4:
> > * Add R-b
> 
> ???
> 
> Nothing was added, left-over from some old version?
> 

Compared to v3, this version adds the Reviewed-by tags,
which is what the Add R-b means.

Sorry if that wasn't clear! :-)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
