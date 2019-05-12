Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23921AA03
	for <lists+linux-rockchip@lfdr.de>; Sun, 12 May 2019 04:38:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sj/wjFaFL1JS4v+8UjqBgrwxDpVOBfC9KQCqTkSBB1A=; b=qLy5JUTzF95FkJ
	+8Wo1olgRvlgvk7Jid7nSIQE+BDe8as73A8PpO4TM9+zGTeSycu3vy8XhO+T/DgKOZB+IuPWF21UH
	5x2DYDqRvcPfrh0lTV1Pq4KbMBAz8k038wvaTPQLDmjvv3ms8+62N3BcgwI/mDU7x5bLa9kKXpNBc
	Rd2l8UB9sVIRpGKL6ECjk3J8pCigGAbvVl5FnDNFt3KPWy8zdk6vvp96vZr5kB6g/jJBa9eGIQsFv
	L25sJMrcLsDMvHQTfIwbYhWRV7zNwN+UCrfSS4YNuTCiBk63BjYM9hR9wzeIGQAeUle37hlVrJHW9
	7V8ARqR2rPk5AjNJqy1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPeNQ-0007q1-5u; Sun, 12 May 2019 02:38:12 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPeNM-0007pf-Cm
 for linux-rockchip@lists.infradead.org; Sun, 12 May 2019 02:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IEholCRmvo79RozHFinaMDbZJFmhTsk8i5Tl1GopLHY=; b=BUeTJCJja2+VdXzxihw5yYDmlR
 O87b8QHz76NktMZWEWUI73EbLreFJkRKz48KtMutbBo01ESxyAqEdQgPGKlOOwAtD+4ehQprcYjwT
 clBedmLSzEp2mhTvaBy038MQEe3EAYhdtiYrK1eKJLfrBRSNvOdi6JmDYRl1DTycidhE=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hPeN8-0008Uc-Qb; Sun, 12 May 2019 04:37:54 +0200
Date: Sun, 12 May 2019 04:37:54 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
Message-ID: <20190512023754.GK4889@lunn.ch>
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_193808_587274_4373C786 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 07:17:08PM -0400, Peter Geis wrote:
> Good Evening,
> 
> Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add
> rtl8211e rx/tx delays config" breaks networking completely on the
> rk3328-roc-cc.
> Reverting the offending commit solves the problem.

Hi Peter

The fix should be in net, and will soon make its way upwards.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
