Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BAAFFCAB
	for <lists+linux-rockchip@lfdr.de>; Mon, 18 Nov 2019 02:04:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptBzUMczuiyDG1HT6+xAGgOzFHdCFsCM88r/UYCJ7k4=; b=IYt8yAWtsdc7md
	oJnz2TgbucSyllaMuu5zJBAh13OffS6ITblvHy32/bWuwAzINrjyRlz9goyEjP4pHfnBGq3I4QJRu
	zebyIQzf0algN7jHLzT2CIiu4AW8FWO+NkzwaJ0ef/wQZyyTYip+lMZDJc7Fp/RUAwmnnsZBHc+ZP
	bQiw4p41k4jX9CW8jQLR9FYqoEvKX88hLbs6jPjYJX1UVWF0P1QJ1RY3mNRgfvU49a2u1XwXsuLGR
	5cyo+JzxKmimmqjIe+YQiOXv8kjLyMDFcGyZoHESheTAd7pZeCDvrsBO1SnrPb1mjMTaQzBe1hpan
	LvpNrVg7F8ZQNWZVvFjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWVSZ-0000Lz-BR; Mon, 18 Nov 2019 01:04:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWVSP-0000DJ-Qn; Mon, 18 Nov 2019 01:03:59 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iWVSB-0003iv-GC; Mon, 18 Nov 2019 02:03:43 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Markus Reichl <m.reichl@fivetechno.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdd_log on rk3399-roc-pc
Date: Mon, 18 Nov 2019 02:03:42 +0100
Message-ID: <1963448.kY1Vgr51ze@phil>
In-Reply-To: <d786ef47-eda8-3994-2ef2-fc4a584bcdcc@fivetechno.de>
References: <20191111005158.25070-1-kever.yang@rock-chips.com>
 <fd9ee2bc-9dfb-1aa2-f00f-add9b3069876@web.de>
 <d786ef47-eda8-3994-2ef2-fc4a584bcdcc@fivetechno.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_170358_016118_486550D6 
X-CRM114-Status: GOOD (  10.92  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Alexis Ballier <aballier@gentoo.org>,
 Kever Yang <kever.yang@rock-chips.com>, Soeren Moch <smoch@web.de>,
 Hugh Cole-Baker <sigmaris@gmail.com>, Andy Yan <andyshrk@gmail.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>, linux-rockchip@lists.infradead.org,
 Peter Robinson <pbrobinson@gmail.com>, Nick Xie <nick@khadas.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Vicente Bergas <vicencb@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-arm-kernel@lists.infradead.org,
 Andrius =?utf-8?B?xaB0aWtvbmFz?= <andrius@stikonas.eu>,
 linux-kernel@vger.kernel.org, Oskari Lemmela <oskari@lemmela.net>,
 Robin Murphy <robin.murphy@arm.com>, Vivek Unune <npcomplete13@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Am Dienstag, 12. November 2019, 12:42:09 CET schrieb Markus Reichl:
> On rk3399 vdd_log shall not exceed 1.0 V. On rk3399-roc-pc
> vdd_log is presently 1118 mV. Fix by setting the min voltage
> of the respective pwm-regulator down to 450 mV.
> This results in a vdd_log of 953 mV.
> Specify the supply to silence warning.
> 
> Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>

applied for 5.6 (or maybe still 5.5)

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
