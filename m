Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA741FC927
	for <lists+linux-rockchip@lfdr.de>; Wed, 17 Jun 2020 10:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kakFHnYwO4byBlc6ZooZ1lAXUkF3sxINlu4N++yMzjo=; b=YN+15ZxWkAWJAT
	3rEDNCmxbUN1tCht0fORjD1/VGWzgfqSVhbkiNF1ufJ8N2pVrvNJcQdq65ltId2gwREPaCIogDBgv
	KVMPwj55CBhtVUvapuOZfAmPNSpuOEyzBkJ+yVV4IyFcwxIxBfA7hbMh4bBKa4G1XrFjdooKdJmmc
	u7pajfYU6L8GgOL68UmOn/1297FD0l4ObUVuW/bg2ibhGozC2l6wlRyPEFRUxWz8unEM6fc+0BwZQ
	eiigaZrho+UaEfDtHFDpvBTGg44+CyqM+JRCCbXPMDPfN0hqoQkSomAUX/XNESKttJulTaqA+kN3H
	fiYi62zBqwp+RdboqJng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlThr-0008Cg-TK; Wed, 17 Jun 2020 08:46:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlTho-0008Ba-Sa; Wed, 17 Jun 2020 08:46:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jlThn-00062C-Jl; Wed, 17 Jun 2020 10:45:59 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Abhishek Pandit-Subedi <abhishekpandit@chromium.org>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] ARM: dts: rockchip: Add marvell BT irq config
Date: Wed, 17 Jun 2020 10:45:57 +0200
Message-Id: <159238352489.1408655.7330930491123467152.b4-ty@sntech.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
References: <20200612130219.v2.1.I66864be898aa835ccb66b6cd5220d0b082338a81@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_014600_921861_2C5CE459 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, chromeos-bluetooth-upstreaming@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 12 Jun 2020 13:02:48 -0700, Abhishek Pandit-Subedi wrote:
> Veyron Jaq and Mighty both use the Marvel 8897 WiFi+BT chip. Add wakeup
> and pinctrl block to devicetree so the btmrvl driver can correctly
> configure the wakeup interrupt.

Applied, thanks!

[1/1] ARM: dts: rockchip: Add marvell BT irq config
      commit: 6c2b99a2e7a073575b4ee91abf7d16470991c1f4

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
