Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A1D1AB423
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 Apr 2020 01:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0eGTB5D0Fc1VrnA5H7t+8WvD7AMzOCT3JufKyv3E4jA=; b=XUEJxn9YOGbox8
	4ICG7eG+IEyOoSAtOPr/WP/Nv+H33Zvrupqaq/k7lEsTHxbk2FZlASAs0cKmg0AyPegEj/FynZ2r4
	CyqDRimVfHYm5mpJnMNTelS3h6TFtB9sPGYlSnI+QQ7oCHnOus7on5Qzn4znQE9wYTYQpLm7Nhdz2
	9R8MYoqJFzmAJXKPPUBEr5w5YLylsPlhKmBuQ+HDEWxmrplIZFrxFPEhQBxDFPd+d0piC8iXI5Jic
	FvohxHy17abbsfDCyPIJp5g5FmGA7ZCil/XMpwtySJzusJHQ2UEe45irSIRL4plBYtr3dh0wft7nI
	KsVv4MUkMdlno75wfUsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrLj-0000AW-OQ; Wed, 15 Apr 2020 23:21:43 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOrLa-0008V0-OB; Wed, 15 Apr 2020 23:21:35 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 8C67E120ED569;
 Wed, 15 Apr 2020 16:21:26 -0700 (PDT)
Date: Wed, 15 Apr 2020 16:21:25 -0700 (PDT)
Message-Id: <20200415.162125.2094896562695820757.davem@davemloft.net>
To: jbx6244@gmail.com
Subject: Re: [PATCH] dt-bindings: net: ethernet-phy: add desciption for
 ethernet-phy-id1234.d400
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200415200149.16986-1-jbx6244@gmail.com>
References: <20200415200149.16986-1-jbx6244@gmail.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 15 Apr 2020 16:21:27 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_162134_828272_DB468E91 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, heiko@sntech.de,
 devicetree@vger.kernel.org, netdev@vger.kernel.org, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>
Date: Wed, 15 Apr 2020 22:01:49 +0200

> The description below is already in use in
> 'rk3228-evb.dts', 'rk3229-xms6.dts' and 'rk3328.dtsi'
> but somehow never added to a document, so add
> "ethernet-phy-id1234.d400", "ethernet-phy-ieee802.3-c22"
> for ethernet-phy nodes on Rockchip platforms to
> 'ethernet-phy.yaml'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

I'll take this via my net tree, thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
