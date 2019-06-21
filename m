Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 291664E878
	for <lists+linux-rockchip@lfdr.de>; Fri, 21 Jun 2019 15:06:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5unhRgoqOpct6Xo05DEO0C29S2PBCnbrT6BrRE4vgTs=; b=XQohL7iMZixy99
	T8kzxfH9djf4c6f0a+l9gKQSLYTfuDpK5z2vDLvri50Z/lOms1y+IoGjVpROY0+pVc/Oa+8adpHtA
	TuMYmiDH50HDxprLECS/9u55OdAN7NbzYlKh4dGW2OtAy9LVbR1AOwjOa7Vnh5DkGj7hSQ28fkcrv
	RISJWQWgnryHJk9cvotNogZ+qfkU0v9C7O87rqrKgqMkRM8MYhggqZtdqiUqvjAxnNX2URggRDYs3
	yK6LAJOkf4QH8mnXKxXbQmteuhscjLxXl4UHBnNTrKBqyEnXsor3sXdHrSrJhGFxLOA6DBh/jwaiZ
	R08Pqrp8gLc72/WwUERw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heJEx-0000HU-Uj; Fri, 21 Jun 2019 13:06:04 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJEw-0000Gv-JY
 for linux-rockchip@bombadil.infradead.org; Fri, 21 Jun 2019 13:06:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NFFkEOBTG8Cq0dYbxoKpXE88n3sXwYlXTt4ELwN8RYM=; b=3Bi7D9vtElGAGj9FtSz4/TEWUJ
 1rWzGr3PcWsssIlwO2TnjuQr0OWQsqr2eSXfbLUuZ/0qd58he8AjvryddrVbmwNA+Z2d+B1TIlQ4Q
 vrN2J9KDcDsq4WasmaQrS3ilZ/UyF5w7X7mvFPwxCENbGBoJEMsaKKGiI0lJjtzkzRJ7vy8mZmINL
 PrblqAF6RTHjSWliNEHECcx4ByzFxp849c1+ynV6LKtclfVFywsqcn5Mkviuh9bQuSXYaHmol6Ryy
 TuvcFUJx43sDdHqeSMScAU+ZJ49WS8NrKmPKRE4TRCgvRYFShEsfNJQ3++uVlU0mODytH8ikxiKvb
 hmZbRwxw==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heJEt-0000eg-6Y
 for linux-rockchip@lists.infradead.org; Fri, 21 Jun 2019 13:06:00 +0000
X-Originating-IP: 90.88.16.156
Received: from aptenodytes (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E48BCC0013;
 Fri, 21 Jun 2019 13:05:16 +0000 (UTC)
Message-ID: <a979c636a338f3e645abf18ca5cd539b08815e9e.camel@bootlin.com>
Subject: Re: [U-Boot] [PATCH v2] arm64: dts: rockchip: Add support for
 Khadas Edge/Edge-V/Captain boards
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Mark Kettenis <mark.kettenis@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>
Date: Fri, 21 Jun 2019 15:05:16 +0200
In-Reply-To: <54387ddeae322fba@bloch.sibelius.xs4all.nl>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <df4fe202b5d59e37ef28af1e1106d0a92d6c5038.camel@bootlin.com>
 <88b913b4-5bb7-58fb-650b-b3e4e74ff66a@rock-chips.com>
 <5485782.mvTjYBxPra@phil> <54387ddeae322fba@bloch.sibelius.xs4all.nl>
Organization: Bootlin
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: linux-rockchip@lists.infradead.org, maxime.ripard@bootlin.com,
 kever.yang@rock-chips.com, u-boot@lists.denx.de, nick@khadas.com,
 philipp.tomsich@theobroma-systems.com, linux-amarula@amarulasolutions.com,
 xieqinick@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Fri, 2019-06-21 at 14:52 +0200, Mark Kettenis wrote:
> > From: Heiko Stuebner <heiko@sntech.de>
> > Maybe we could give this some sort of time limitation like
> > "binary ddr-init allowed till 2019-10-31" in Kconfig or somewhere
> > to give people the chance to do things piece by piece but still force them
> > to actually work on improving the situation.
> > 
> > As driver-side changes will generally benefit more socs/boards potential
> > removal after the time limit would only affect the board+dts itself.
> > 
> > So somewhat similar to what the kernel does with "staging", if you
> > keep working on improving it, it is allowed to stay.
> > 
> > This could be also applied to already included boards, like
> > "give it a working ddr-init till 2019-12-31 or it gets removed", similarly
> > to how Tom handles devicemanager conversions currently
> 
> Still doesn't make sense to me unless you're going to enforce such a
> rule for all included boards that lack usable open-source DRAM
> initialization code.  Otherwise you're just punishing Rockchip for
> having a partial DRAM initialization code and are potentially sending
> the message that it's better not to attempt create open source DRAM
> drivers.

I'm not following this at all. Rockchip has a particular situation
where almost all the boards have free DRAM init, which is not the case
on every platform. I don't see why this decision has to be harmonized
on the whole project since I believe it only makes sense for the
specific case of Rockchip.

Seeing this as some sort of punishment feels like a gross
misinterpretation of our intent. If we are clear and communicate about
the motivations why we think this is important and why this rule is
applied, then there is nothing we can do about mis-judgments. I don't
think it's fair or rational to not take action because of that.

Whatever we do, there is always a chance that people will mis-interpret 
things and throw shit at us for taking political decisions. That's too
bad, but there is only so much we can do about that. And rest asured
that people (including myself) can also throw shit at the project for
maintaining a weak status-quo and not contribute to moving things
forward on political aspects when it is in a power position to do so.

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
