Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A28849C92
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 11:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aIyzamOqNGYXGUvkqmcA7Q+BPDYXMKBmI75ftfQyUD4=; b=tOT6IA9b+zmWQP
	zNyVphe/kPuZCbFxNVpytick3hM0ibt/CPuwMvgxh54TCmoyZywlnqOkihfQ4lQ/0xsmwEFqM7xtx
	3wE+/A4kLHScrZjVSeh+4CIDEUe+tvyU+R7WQMgpndcpWIFjOqrVDoT5L1ak2cqWDngOC6aubKZ+S
	n5FjQk5dng9m2iGDJN0qYyq43ygfaz52+0eHSyeuPvRgzue34Km9hCKXuglHn5jB2vdH0m7lue65J
	qJ/1Y6Y5nrIoqg8rO1uzzhKZPKYuoxcedfaIr3mhZsopxcNcyUp1qv7oQckcnGcAbUbBGeCoGNxfo
	ordzGmvup5OqRqr0rUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdA26-0000Ww-PE; Tue, 18 Jun 2019 09:04:02 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdA23-0000WP-QB
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 09:04:01 +0000
X-Originating-IP: 90.88.23.150
Received: from aptenodytes (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 3158740012;
 Tue, 18 Jun 2019 09:03:52 +0000 (UTC)
Message-ID: <196aa8982a2d9bc2fec5408fe4d84615bbfb2c2b.camel@bootlin.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 11:03:52 +0200
In-Reply-To: <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
 <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
Organization: Bootlin
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_020400_013277_B1BD1627 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: U-Boot-Denx <u-boot@lists.denx.de>, Simon Glass <sjg@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 nick@khadas.com, Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Nick Xie <xieqinick@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Tue, 2019-06-18 at 14:27 +0530, Jagan Teki wrote:
> On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
> <paul.kocialkowski@bootlin.com> wrote:
> > Hi,
> > 
> > On Mon, 2019-06-17 at 15:24 +0800, xieqinick@gmail.com wrote:
> > > From: Nick Xie <nick@khadas.com>
> > 
> > Was this tested with SPL support? I don't see DRAM configuration here
> > so it seems that it relies on the non-free rockchip loader.
> > 
> > If that is the case, could you please indicate that in the commit
> > message?
> > 
> > To maintainers: please do not merge this series before DRAM init and
> > SPL support is available for these boards.
> > 
> > It seems that other RK3399 boards were merged without SPL support and
> > sofar, I have the feeling that nobody cared to explain how we got into
> > this broken situation. Please don't merge any more such board.
> 
> fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were merged
> with TPL-enabled (which was discussed on the threads, if you remember)
> with below boot chain.
> 
> rkbin (TPL) -> SPL -> U-Boot proper
> 
> Same case for this board as well.

Here is a quote from Philipp Tomsich on the thread we discussed this:

" On some boards, there will be no TPL and only a SPL stage that will
initialise DRAM (as the move to having TPL on the RK3399 is optional).

I agree with Paul that the DRAM init should be part of U-Boot whenever
we add new boards and make an open DRAM init a prerequisite. "

So even if I frequently confuse SPL and TPL, it doesn't change the fact
that no board should be merged without proper DRAM init.

Please stop pushing for merging these boards. I'm not sure what we
should do about the boards that were merged already without DRAM init,
but maybe they should be reverted.

Cheers,

Paul

-- 
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
