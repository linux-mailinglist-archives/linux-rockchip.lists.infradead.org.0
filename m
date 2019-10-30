Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C86E9529
	for <lists+linux-rockchip@lfdr.de>; Wed, 30 Oct 2019 03:59:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JXvUd7cyOburdlTWjWDvCfISgTAbfjR7iQnN1cjWdnU=; b=ue2T7IrsRx3na+
	lLnBmgLZlQSSReP3buQ9uq9jQa/joB+RmpTtzWFHJIJvtpD3OPKFyYn9GUkSKMl6WjbCmk//5vcoh
	ZTlA+lP+FIBWLr3YauQe4kGrQPAYYL6YJPV2Zz+VWpbstnt1j1t2ruN2ydOwHqUoIdPPwAk21SrpM
	xxWUX7YxL1ShiXpakivFOhGPa6MQIrwrIRSR6GAyr++btnu2OK1ywHWtTBmtysjoAIkFQeAnRHMXQ
	8+uu7M4DEO1knkfHL+eA6XnDN7GU+vyRHGiN2MfFkQQHn1EvTCdwdzs0O5Ydx9+Ag2ZwUjTKVPD93
	dpzpPvOFBi8ubi2eXWWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPeCv-00008w-0S; Wed, 30 Oct 2019 02:59:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPeCq-00007n-Tu
 for linux-rockchip@lists.infradead.org; Wed, 30 Oct 2019 02:59:35 +0000
X-UUID: 264658b124fa47ff8522ef78b7a23d2c-20191029
X-UUID: 264658b124fa47ff8522ef78b7a23d2c-20191029
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1953399383; Tue, 29 Oct 2019 18:59:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 29 Oct 2019 19:59:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 30 Oct 2019 10:59:19 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 30 Oct 2019 10:59:19 +0800
Message-ID: <1572404361.18464.24.camel@mhfsdcap03>
Subject: Re: [PATCH 1/5] phy: rockchip: add inno-usb3 phy driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 30 Oct 2019 10:59:21 +0800
In-Reply-To: <CAMdYzYoOQ_C_f2v-3XBid8X0fc6z3Bw0XqRi3CQiwCzRLT-_0g@mail.gmail.com>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-2-pgwipeout@gmail.com>
 <1572315115.18464.11.camel@mhfsdcap03>
 <CAMdYzYoOQ_C_f2v-3XBid8X0fc6z3Bw0XqRi3CQiwCzRLT-_0g@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0AE19865E2DAD4FAC6FEAE85F7F15EF9A86E6F117FE265F40C325C4671791EE82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_195932_969820_AFE07E65 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: katsuhiro@katsuster.net, linux-rockchip@lists.infradead.org,
 linux-usb@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Heiko
 Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 2019-10-29 at 11:26 -0400, Peter Geis wrote:
> On Mon, Oct 28, 2019 at 10:12 PM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> >
> > On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> > > Add the rockchip innosilicon usb3 phy driver, supporting devices such as the rk3328.
> > > Pulled from:
> > > https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  drivers/phy/rockchip/Kconfig                  |    9 +
> > >  drivers/phy/rockchip/Makefile                 |    1 +
> > >  drivers/phy/rockchip/phy-rockchip-inno-usb3.c | 1107 +++++++++++++++++
> > >  3 files changed, 1117 insertions(+)
> > >  create mode 100644 drivers/phy/rockchip/phy-rockchip-inno-usb3.c
> > >
...
> > > +static int rk3328_u3phy_pipe_power(struct rockchip_u3phy *u3phy,
> > > +                                struct rockchip_u3phy_port *u3phy_port,
> > > +                                bool on)
> > > +{
> > > +     unsigned int reg;
> > > +
> > > +     if (on) {
> > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > +             reg &= ~BIT(4); /* ldo power up */
> > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x044);
> > > +             reg &= ~BIT(4); /* bg power on */
> > > +             writel(reg, u3phy_port->base + 0x044);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x150);
> > > +             reg |= BIT(6); /* tx bias enable */
> > > +             writel(reg, u3phy_port->base + 0x150);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x080);
> > > +             reg &= ~BIT(2); /* tx cm power up */
> > > +             writel(reg, u3phy_port->base + 0x080);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > +             /* tx obs enable and rx cm enable */
> > > +             reg |= (BIT(3) | BIT(4));
> > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > +
> > > +             udelay(1);
> > > +     } else {
> > > +             reg = readl(u3phy_port->base + 0x1a8);
> > > +             reg |= BIT(4); /* ldo power down */
> > > +             writel(reg, u3phy_port->base + 0x1a8);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x044);
> > > +             reg |= BIT(4); /* bg power down */
> > > +             writel(reg, u3phy_port->base + 0x044);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x150);
> > > +             reg &= ~BIT(6); /* tx bias disable */
> > > +             writel(reg, u3phy_port->base + 0x150);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x080);
> > > +             reg |= BIT(2); /* tx cm power down */
> > > +             writel(reg, u3phy_port->base + 0x080);
> > > +
> > > +             reg = readl(u3phy_port->base + 0x0c0);
> > > +             /* tx obs disable and rx cm disable */
> > > +             reg &= ~(BIT(3) | BIT(4));
> > > +             writel(reg, u3phy_port->base + 0x0c0);
> > > +     }
> > Try to avoid magic number
> 
> Since this was not my driver, I only pulled it in and made the
> necessary changes to get it working, I tried to refrain from
> modifications as much as possible.
> Do you want me to convert these addresses to definitions based on the
> comments in the code?
It's better to follow register names defined in register map doc if you
have
> 
> >
> > > +
> > > +     return 0;
> > > +}
> > > +



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
