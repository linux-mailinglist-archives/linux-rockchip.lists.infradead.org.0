Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6220016F86
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 05:39:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6Rl8Mr/6iZKf1amnfE2NEBE61jyIosvq8rQOE7fnpw=; b=sctDI7jtQ1WxZW
	hFgg+7uiF+HTLme6JkxhifLH/3fQf4vTncE5YnHBv95cjvPt0ByNm5pCUQVXbIje/3ydIgtg8XpwH
	PWPFJzlNXQrNzkkAVPF/E7/wx+RgH7h4DoE9YqA9ev77Z5oCSohnLhviK8u2vP5gif0KhYbG5/UIp
	AwHYw7rdccHuWypOURjtB5SxUcGA0N/aTB1aUq4Pa8/SsFQqpeHcsY0pzz2Ev2Tv3wrQqz9Jfti+n
	Qu709ZFKyO3Pk7bqATu4IHtZeyLljWoobXgh7xsW+j+xKb81t2kQzNwXeX24beVZdv+kx0sexv6Tj
	ZUk6Gj0tNrsEOlJOLllA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODQh-0007Yu-GZ; Wed, 08 May 2019 03:39:39 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODQe-0007YK-0Y
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 03:39:37 +0000
Received: from kever.yang?rock-chips.com (unknown [192.168.165.252])
 by regular1.263xmail.com (Postfix) with ESMTP id 49207359;
 Wed,  8 May 2019 11:39:33 +0800 (CST)
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
 P12364T140129786119936S1557286767508644_; 
 Wed, 08 May 2019 11:39:28 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9b9fabd705c79e799e66ff483f6b0ac7>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: u-boot@lists.denx.de
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
Subject: =?UTF-8?Q?Re:_[PATCH_v7_3/4]_rockchip:_dts:_rk3399-u-boot:_Add_u-bo?=
 =?UTF-8?B?b3QsIGRtLXByZS1yZWxvYyBmb3Igc3BpMeOAkOivt+azqOaEj++8jOmCruS7tg==?=
 =?UTF-8?Q?=e7=94=b1linux-rockchip-bounces+kever.yang=3drock-chips.com@lists?=
 =?UTF-8?B?LmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
To: Jagan Teki <jagan@amarulasolutions.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Akash Gajjar <akash@openedev.com>
References: <20190507182152.4254-1-jagan@amarulasolutions.com>
 <20190507182152.4254-4-jagan@amarulasolutions.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <c7964e95-1ff3-91b7-c34d-29ca9c617215@rock-chips.com>
Date: Wed, 8 May 2019 11:39:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20190507182152.4254-4-jagan@amarulasolutions.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_203936_225328_105606E0 
X-CRM114-Status: GOOD (  12.44  )
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



On 05/08/2019 02:21 AM, Jagan Teki wrote:
> Add u-boot,dm-pre-reloc property for spi1, so-that the
> subsequent rk3399 boards which boot from SPI.
>
> This help to separate the u-boot specific properties away
> from base dts files so-that the Linux sync become easy and
> meaningful.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>  arch/arm/dts/rk3399-u-boot.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm/dts/rk3399-u-boot.dtsi b/arch/arm/dts/rk3399-u-boot.dtsi
> index f533ed95eb..0786c1193a 100644
> --- a/arch/arm/dts/rk3399-u-boot.dtsi
> +++ b/arch/arm/dts/rk3399-u-boot.dtsi
> @@ -6,3 +6,7 @@
>  &sdmmc {
>  	u-boot,dm-pre-reloc;
>  };
> +
> +&spi1 {
> +	u-boot,dm-pre-reloc;
> +};




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
