Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CFB17B2C4
	for <lists+linux-rockchip@lfdr.de>; Fri,  6 Mar 2020 01:22:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xRy49Ve8/cH9HdoW3v6NCjg7uUxsfYClANg1vn/2Fd8=; b=IyFefdtDSAZtz3
	9SIy5iUy4zyy1me9vXQ1dTLcvA6A6T+jiyFiNtnKxkZcYW4rv6gALW6ljvkmpxzASkOdWV1Cfw6nD
	HUtsx68agyrxQRpxj3YHp7vjkWa42c34XGThcaBwtqGp9ddQbK3ftyxue6mphIBlgcYKgCnd0pNxz
	R3Hb16ERDQ7Q8vrRcl1frZiNLT7DrIWqRd0TcGujHt0yFs2bn5OlNjyv89MawyhH+g0TRErrhOeC+
	wvXLNX8N1nN6zrg6CmIfTIriOIODI5flQN9x2BYfO5BbEHAiIMyyIUUm2Gl0RMfo+A//+LJqd6sdo
	0G5+i+sNdv/IQThj/BYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA0lT-0008Vl-9J; Fri, 06 Mar 2020 00:22:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA0lI-0008OK-Oh; Fri, 06 Mar 2020 00:22:46 +0000
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jA0l3-0006jB-1X; Fri, 06 Mar 2020 01:22:29 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: Add doc for Pine64 Pinebook Pro
Date: Fri, 06 Mar 2020 01:22:27 +0100
Message-ID: <2185162.N5mF8xYTKh@phil>
In-Reply-To: <20200304213023.689983-2-t.schramm@manjaro.org>
References: <20200304213023.689983-2-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_162244_954068_F6086872 
X-CRM114-Status: UNSURE (   8.74  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Emmanuel Vadot <manu@freebsd.org>, Alexis Ballier <aballier@gentoo.org>,
 Rob Herring <robh@kernel.org>, Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Kever Yang <kever.yang@rock-chips.com>, Markus Reichl <m.reichl@fivetechno.de>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Nick Xie <nick@khadas.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Vivek Unune <npcomplete13@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Mittwoch, 4. M=E4rz 2020, 22:30:22 CET schrieb Tobias Schramm:
> From: Emmanuel Vadot <manu@freebsd.org>
> =

> Add a compatible for Pine64 Pinebook Pro
> =

> Signed-off-by: Emmanuel Vadot <manu@freebsd.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

applied for 5.7, but moved above Rock64 ;-)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
