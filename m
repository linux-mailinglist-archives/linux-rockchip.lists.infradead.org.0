Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCC016FAA
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:47:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52btqv521/6sez3PTDuswIr3TVnGv9XCepL4pULq1lU=; b=OgdALDNXuAr9Ot
	a6up9O7jXCvAcGZG0PQKG6QCi4udrspH6X1d/YzaDPO5Vnu+RGdBDNNmGSJBe3nihk4vKkT0y5R7I
	WxpByH+xftSRheNG/iaOFhQnsD6rEayz0JHyYaGIN69fy+R0DiqsJCgftWY77QvHBh7NNIO9L8p6u
	2W+WeeksoFgRNNqQtnHsBwNbR0DRrH8KXr+k1U7MxqXE6lDoIv5DhB3kBa/rByioqO/zrQQfIaiyI
	6XxMWjwuHcuKuR9FcBlZKl2iqJKqIHU8tLVLa1nSvIs6ZpMhx6FT9Jz9oZqVYSpNPS6gv7M9ARXSI
	6BsT8Lu9557wrl6auXlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODYg-0002fr-NV; Wed, 08 May 2019 03:47:54 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODYd-0002eM-Kq
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:47:53 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id B043E2DF;
 Wed,  8 May 2019 11:47:48 +0800 (CST)
X-263anti-spam: KSV:0;BIG:0;
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-KSVirus-check: 0
X-ADDR-CHECKED4: 1
X-ABS-CHECKED: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P12364T140129807099648S1557287265179840_; 
 Wed, 08 May 2019 11:47:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d39cc3d6de214838c915b25795809b72>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: Re: [PATCH v7 05/11] rockchip: dts: rk3399: nanopi4: Use CD pin as
 RK_FUNC_1
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507183625.5983-1-jagan@amarulasolutions.com>
 <20190507183625.5983-6-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <7624b775-43a7-0afa-8747-4ea70214085f@rock-chips.com>
Date: Wed, 8 May 2019 11:47:45 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507183625.5983-6-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204751_865799_CCB8B11B 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org



On 05/08/2019 02:36 AM, Jagan Teki wrote:
> sdmmc cd pin is configured as RK_FUNC_GPIO which is wrong and
> indeed failed to detect the sdcard on the board with below error
>
>   Card did not respond to voltage select!
>
> So, fix it by replacing RK_FUNC_GPIO with RK_FUNC_1 which
> is already defined in rk3399.dts so make use of same like
> other boards.
>
> Add these changes in -u-boot.dtsi to make Linux sync easy for future
> changes.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 9 +++++++++
>  1 file changed, 9 insertions(+)
>  create mode 100644 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
>
> diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> new file mode 100644
> index 0000000000..20db99c0b8
> --- /dev/null
> +++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2019 Jagan Teki <jagan@amarulasolutions.com>
> + */
> +
> +&sdmmc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
> +};




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
