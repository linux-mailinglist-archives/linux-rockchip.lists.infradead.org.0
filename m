Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54855AF7E6
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Sep 2019 10:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJjBGF3+Gy+WjaV+2bdEJ85509AxDiXhiNfLSahZnGw=; b=EhTtVDJOqda0ka
	RpaktBUWoqEHSpaNgj8r/FXVodb1HAa2bpBBn8Ok+3DuVRDtGog8CIwh7suhcstKczP6cfRBaR2nM
	ZSHO603s8D/iAFFzyrjvSwqjL1kxJg7XbNRkYURCFpXtXTNetkqqkuQ8OrbxWZfl+AvcFVOjXjZLM
	xQaMa6Hekf89tLOlM2aT3rTGZA+KBdrcoSMJHtKviw8jvfJYNdrMHyICwdvblyh+y/qmTrobe8GmS
	HN4Zdz/lpHEJYAnjwse7x88gNN9ZyIxkAvGFKKnPR/0iUSVcRRYzkb+AZ5TbTOPTth2uxpaTVgfvq
	UYxkOPmea8zwK9HQHuKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7xyf-0008AN-3Q; Wed, 11 Sep 2019 08:27:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7xyF-0007o4-0e
 for linux-rockchip@lists.infradead.org; Wed, 11 Sep 2019 08:27:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 47C1428DCE0
Message-ID: <6e493142690d48ee7e65c1cb2a4d6aec1e3b671b.camel@collabora.com>
Subject: Re: [PATCH 0/4] Enable Hantro G1 post-processor
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 11 Sep 2019 09:27:16 +0100
In-Reply-To: <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
References: <20190903181711.7559-1-ezequiel@collabora.com>
 <CAAFQd5AdikoN+7TG=0ZGFkSzaK2UFHM4VG7SYtfUtmjQgD61zA@mail.gmail.com>
Organization: Collabora
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_012723_323145_C4D0D4ED 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, kernel@collabora.com,
 Chris Healy <cphealy@gmail.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 2019-09-09 at 16:07 +0900, Tomasz Figa wrote:
> Hi Ezequiel,
> 
> On Wed, Sep 4, 2019 at 3:17 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
> > Hi all,
> > 
> > This series enables the post-processor support available
> > on the Hantro G1 VPU. The post-processor block can be
> > pipelined with the decoder hardware, allowing to perform
> > operations such as color conversion, scaling, rotation,
> > cropping, among others.
> > 
> > The decoder hardware needs its own set of NV12 buffers
> > (the native decoder format), and the post-processor is the
> > owner of the CAPTURE buffers. This allows the application
> > get processed (scaled, converted, etc) buffers, completely
> > transparently.
> > 
> > This feature is implemented by exposing other CAPTURE pixel
> > formats to the application (ENUM_FMT). When the application
> > sets a pixel format other than NV12, the driver will enable
> > and use the post-processor transparently.
> 
> I'll try to review the series a bit later, but a general comment here
> is that the userspace wouldn't have a way to distinguish between the
> native and post-processed formats. I'm pretty much sure that
> post-processing at least imposes some power penalty, so it would be
> good if the userspace could avoid it if unnecessary.
> 

Hm, that's true, good catch.

So, it would be desirable to retain the current behavior of allowing
the application to just set a different pixel format and get
a post-processed frame, transparently.

But at the same time, it would be nice if the application is somehow
aware of the post-processing happening. Maybe we can expose a more
accurate media controller topology, have applications enable
the post-processing pipeline explicitly.

Thanks for the feedback,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
