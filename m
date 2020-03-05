Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2732D17B0C9
	for <lists+linux-rockchip@lfdr.de>; Thu,  5 Mar 2020 22:39:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+N4jlilug3hqu6tCoUYtGN81/SwH7V+xIkQX9ewLss=; b=dIBaHHjMydQYZm
	YdLrhpRGW6U7CQIkhEblwDF/RLW0VQn6ua80TEcUqlI5BESWnUe9KP4ZcyMA+QeyJNoy913s6SGSz
	ykcgBj48UYiD2dYoUXfQC+at/hHSOzwggk3OkXA5VLaZ8t+dCUQupbXVx3Kkm9HMW7gsUnc6r1s0o
	LJz6iCLk1McaA4ETQT9VPSmRCDhmusqPh4sLqinPwma/vi3l9lzO+UeXNNAPtpFONSwll595t/f4p
	GTZvbWeTspjgGwXxD1Fkark5FDogQrfYyzFE4+xYkC+K6/2jmzR5t/Nh3B/3BJN/c3U+9CnK/0X0o
	ckKJqYsDHdZTG3V6dFRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9yCq-0000ad-LN; Thu, 05 Mar 2020 21:39:00 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9yCn-0000a2-QX; Thu, 05 Mar 2020 21:38:59 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j9yCi-00067A-Sg; Thu, 05 Mar 2020 22:38:52 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: remove dvs2 pinctrl for pmic on
 rk3399 evb
Date: Thu, 05 Mar 2020 22:38:52 +0100
Message-ID: <1742149.p31cPTDa3R@diego>
In-Reply-To: <20200305113912.32226-2-andy.yan@rock-chips.com>
References: <20200305113912.32226-1-andy.yan@rock-chips.com>
 <20200305113912.32226-2-andy.yan@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_133858_009087_85B0EF96 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Donnerstag, 5. M=E4rz 2020, 12:39:09 CET schrieb Andy Yan:
> DVS2 of pmic is connected to GND, no pinctrl for it.
> =

> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

applied for 5.7

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
