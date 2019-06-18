Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19DC74A11E
	for <lists+linux-rockchip@lfdr.de>; Tue, 18 Jun 2019 14:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HFdaVrWKwdNsicxX92sjBApHvVTiSxIe2Zv1z3m+GNg=; b=Op4GYqRR+a4QBr
	QtqNHHFGk7L9k/+OqLDIymaIpo5q7fRKsSUWxmrkRO7XU41lEOb2+pPOGOIk7a1+wKKjfGScXLpXR
	2OlqtG/e9u8FqM5QDPsizr/yNuwQbPxyK4adAUyAipgD+NYUUf30Y28c/EP8NOPRxZ94is6e9DVzF
	JjHGrRCW+DTr7OqRBMkPuYnLKsQ4sErK/mKPj6jJABPX6GZ4DBqBc9AbWZIROG911PUqHTe15R1fq
	HtZ9Zii2FoIAhCd5zUhItrywNC+YB5Og7weuOrlwtXb4nJ/qsLRjDz0PZxrRVsxbpL4xLntIlKQXu
	vjkwfYGp41uErtq536eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdDXZ-0007dW-Lw; Tue, 18 Jun 2019 12:48:45 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDWd-00074U-4e
 for linux-rockchip@lists.infradead.org; Tue, 18 Jun 2019 12:47:49 +0000
X-Originating-IP: 90.88.23.150
Received: from aptenodytes (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 70235E0009;
 Tue, 18 Jun 2019 12:47:34 +0000 (UTC)
Message-ID: <ae83ac682e9013699e602d0b1856ec02805a6fd3.camel@bootlin.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Kever Yang <kever.yang@rock-chips.com>, Jagan Teki
 <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 14:47:33 +0200
In-Reply-To: <72551f4c-f7a3-1afa-a214-66bc9c5cf48d@rock-chips.com>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <1560756277-5928-1-git-send-email-xieqinick@gmail.com>
 <5ad4d842c462a19e6241fe620705381169d48318.camel@bootlin.com>
 <CAMty3ZA-wf7tRE=+38SujjXXNGC-pb-m9RzgxFBops6w5n9qzQ@mail.gmail.com>
 <196aa8982a2d9bc2fec5408fe4d84615bbfb2c2b.camel@bootlin.com>
 <72551f4c-f7a3-1afa-a214-66bc9c5cf48d@rock-chips.com>
Organization: Bootlin
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_054747_774722_1AB6C8A8 
X-CRM114-Status: GOOD (  33.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
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
 "open list:ARM/Rockchip
 SoC..." <linux-rockchip@lists.infradead.org>, nick@khadas.com,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 Nick Xie <xieqinick@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Kever,

On Tue, 2019-06-18 at 18:08 +0800, Kever Yang wrote:
> Hi Paul,
> 
> 
> On 06/18/2019 05:03 PM, Paul Kocialkowski wrote:
> > Hi,
> > 
> > On Tue, 2019-06-18 at 14:27 +0530, Jagan Teki wrote:
> > > On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
> > > <paul.kocialkowski@bootlin.com> wrote:
> > > > Hi,
> > > > 
> > > > On Mon, 2019-06-17 at 15:24 +0800, xieqinick@gmail.com wrote:
> > > > > From: Nick Xie <nick@khadas.com>
> > > > Was this tested with SPL support? I don't see DRAM configuration here
> > > > so it seems that it relies on the non-free rockchip loader.
> > > > 
> > > > If that is the case, could you please indicate that in the commit
> > > > message?
> > > > 
> > > > To maintainers: please do not merge this series before DRAM init and
> > > > SPL support is available for these boards.
> > > > 
> > > > It seems that other RK3399 boards were merged without SPL support and
> > > > sofar, I have the feeling that nobody cared to explain how we got into
> > > > this broken situation. Please don't merge any more such board.
> > > fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were merged
> > > with TPL-enabled (which was discussed on the threads, if you remember)
> > > with below boot chain.
> > > 
> > > rkbin (TPL) -> SPL -> U-Boot proper
> > > 
> > > Same case for this board as well.
> > Here is a quote from Philipp Tomsich on the thread we discussed this:
> > 
> > " On some boards, there will be no TPL and only a SPL stage that will
> > initialise DRAM (as the move to having TPL on the RK3399 is optional).
> > 
> > I agree with Paul that the DRAM init should be part of U-Boot whenever
> > we add new boards and make an open DRAM init a prerequisite. "
> > 
> > So even if I frequently confuse SPL and TPL, it doesn't change the fact
> > that no board should be merged without proper DRAM init.
> > 
> > Please stop pushing for merging these boards. I'm not sure what we
> > should do about the boards that were merged already without DRAM init,
> > but maybe they should be reverted.
>
> I don't think we have to have full DRAM init source code for each
> board before we can merge it, I believe most of the board on U-Boot
> mainline need to removed due to this rule. There are so many boards
> from different vendor need a binary loader before U-Boot, and I can
> see only very few drivers for dram at driver/ram/, and I believe rockchip
> is already the most open vendor on this area.

Well, I am not talking about full DRAM init source code as in dynamic
link training. I am talking about having at least static DRAM register
configuration values, which is present for a good number of rockchip
boards.

Of course, it would be best if Rockchip would consider releasing this
source code, which would be the easiest and friendliest solution
towards the community here. Are there internal discussions ongoing
about this? If not, it would be greatly appreciated to start such
discussions and clearly identify what the blocking points are.

> I won't use this rule to stop developers contribute there source code,

This is really sad and I think that Philipp was, like me, inclined to
go towards the other direction.

> for a board support, we only need the board to have the full documentation
> about how to setup and boot with upstream U-Boot. and I think the
> most of people cares more about features in U-Boot proper. Everything
> before U-Boot proper, you can use TPL/SPL or alternative to use binary
> from vendor, as you can see all over the U-Boot mainline now, although
> we encourage people to use full open source TPL/SPL.
> Specifically for U-Boot Rockchip platform, I would like people to
> support not only U-Boot
> proper, but also for full SPL(ATF, OP-TEE support, itb image and other
> features)
> support. And for DRAM init,
> - if this belongs to SPL for this board, you must implement it or else
> SPL won't work;
> - if this does not belong to SPL for this board, you need implement full
> function SPL;
>     and you can either to have full function TPL with DRAM init(which is
> prefered)
>     or alternatively use binary loader from vendor.

This is not really a technical argument here, more of a policy argument
that ensures we have full free software support for the boards we
support, and not only half-cooked support (that will most likely never
be completed as soon as something that works gets merged). So it is a
strategical decision, not a strictly pragmatic one.

I think reverting patches adding support for boards with no DRAM
configuration at all would send a message in the right direction here.

> I'm not sure if you have write a new dram driver for a board, but I know
> even the board vendor may not have the capability to write the DRAM
> driver, so this should not stop developers contribute to all other 99%
> features on U-Boot.

What they can do is run the non-free blob, dump the registers
afterwards and then use that in the DRAM configuration dtsi. Perhaps
one could write up a tool to ease the process if they think the process
is too much for a regular bringup.

Most of the time, the DRAM chips are soldered so the calibrated values
have about no reason to change over time and can just be kept as-is.

What do you think?

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
