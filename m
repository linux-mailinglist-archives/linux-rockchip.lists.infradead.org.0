Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A75B3E8
	for <lists+linux-rockchip@lfdr.de>; Sat, 27 Apr 2019 18:32:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+zeAJCAEGq0kiUkt0zozVks8ThS8+I8epKwfbqEpd+4=; b=XXotA5RNPETdZ2
	mb+kouR8I9CkI7oI1wNW5zCc3WriOM6aErCyXe/r7iIRXxpR99JMJpbCqt468RAJ17fe/yEgc6vxS
	pzU33jfFuH+TqWbdfFzVciKOjWAPAXGivI8EDk5gV//c4ztTtMTbM6A2nwwjUAu6FmYZfSVS+rrWA
	Rzt14g4Ht+PCwxqh9d10vMO3MMoQ8e6YsIxhQT2myCpgs4jJuttPEKhuDS5p9yDQrmfr7qW7Pc4nt
	WwXaLF/c98vd4Rss7SF3DHF8Ln7SW2A0DAluq8uJ6FkvPdU2ePTuupF4G8fT7bR+/mVAC55b1ctW+
	Wc7CfEqaro9Ml1JcVeKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQFL-00086u-8w; Sat, 27 Apr 2019 16:32:15 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKQFB-0007zB-WA; Sat, 27 Apr 2019 16:32:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=c8Bux03tjjC8g0RTzqUC1nUbzfL5pVXpfOPA0tXBHRg=; b=MQ0lfL6dxkAgb5GpK8RRtxkbd9
 l4cp8MqqwAuN12ZCsK2fKY4xXvea7ZoYi5hP4+9GkeIQwpDO/vzWQc5P7/ItBl4HsvQOw/Q3fEwIW
 aUUXZzu92B0JcV0AjOzPfJcbEOSEsV63RPz+CZRhNkRS6plNbLgyFxgErChiqspLgr/4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hKQEZ-0002go-EJ; Sat, 27 Apr 2019 18:31:27 +0200
Date: Sat, 27 Apr 2019 18:31:27 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH 2/4] dt-bindings: doc: Reflect new NVMEM
 of_get_mac_address behaviour
Message-ID: <20190427163127.GB9816@lunn.ch>
References: <1556320002-26213-1-git-send-email-ynezz@true.cz>
 <1556320002-26213-3-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556320002-26213-3-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_093206_181473_F87A1C77 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Li Yang <leoyang.li@nxp.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, devicetree@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jassi Brar <jaswinder.singh@linaro.org>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>, Salil Mehta <salil.mehta@huawei.com>,
 Fugang Duan <fugang.duan@nxp.com>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alban Bedel <albeu@free.fr>,
 linux-oxnas@groups.io, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> diff --git a/Documentation/devicetree/bindings/net/ethernet.txt b/Documentation/devicetree/bindings/net/ethernet.txt
> index 2974e63..1e2bc9a 100644
> --- a/Documentation/devicetree/bindings/net/ethernet.txt
> +++ b/Documentation/devicetree/bindings/net/ethernet.txt
> @@ -10,6 +10,8 @@ Documentation/devicetree/bindings/phy/phy-bindings.txt.
>    the boot program; should be used in cases where the MAC address assigned to
>    the device by the boot program is different from the "local-mac-address"
>    property;
> +- nvmem-cells: phandle, reference to an nvmem node for the MAC address
> +- nvmem-cell-names: string, should be "mac-address" if nvmem is to be used

You put the new values after local-mac-address and mac-address. That
suggests they are of lower priority. That conflicts with the current
patch. If you think NVMEM should take priority, please put the
properties first.

	   Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
