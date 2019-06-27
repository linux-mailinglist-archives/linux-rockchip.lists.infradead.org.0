Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D99B57E58
	for <lists+linux-rockchip@lfdr.de>; Thu, 27 Jun 2019 10:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TXVsh8d0ysqaZA5uFXXXqmKO7FiuYUOx0hQkf8pEJE=; b=QOPDXC7hXUs3xL
	i84Es7XZWupyFC0Yqv4D9FpXgdG1bNiu/u2l8yorhZ2MV3k1rGfi8aD+c1vbfd9FFWUcKkE05nik4
	Du5ZuKlyqunP97MurK3k07hMtSNjIML/W4Hai1OiG9pvfluYNEnJeCyAMdTwsUJ/olyn9NLD/z01J
	+xQLzvSjh47LgtJ82Taa3eVeVIPtH5j39LSG/R5pc2AoZ0JxrJH/XK2Hopk8kJyaX3q/2lAi9OvOj
	x4IpQDSmVBqSEK9HYKkIkxziw7Mxu7ovRH7g/QYtaIJ/sKwMmGmR1Ndp9yNYTy5yHOjMFUvYbMSKd
	zh2DbkWvGqOqU/FQ6uGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPuS-0006ep-4j; Thu, 27 Jun 2019 08:37:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPu5-0006NE-6T
 for linux-rockchip@lists.infradead.org; Thu, 27 Jun 2019 08:37:16 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgPtv-0006sM-WD; Thu, 27 Jun 2019 10:37:04 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 01/15] dt-bindings: display: rockchip-lvds: Remove
 panel references
Date: Thu, 27 Jun 2019 10:37:03 +0200
Message-ID: <2294598.EvZ579e8H0@phil>
In-Reply-To: <20190624215649.8939-2-robh@kernel.org>
References: <20190624215649.8939-1-robh@kernel.org>
 <20190624215649.8939-2-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013713_511639_23233DD0 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Montag, 24. Juni 2019, 23:56:35 CEST schrieb Rob Herring:
> The panel bindings are outside the scope of the Rockchip LVDS interface
> binding. The references are about to change too, so rather than update
> them just drop the section on the panel bindings.
> =

> Cc: Sandy Huang <hjc@rock-chips.com>
> Cc: "Heiko St=FCbner" <heiko@sntech.de>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Rob Herring <robh@kernel.org>

applied to drm-misc-next

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
