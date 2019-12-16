Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F061200E1
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 10:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBBxX5Zv5Yf2/i4uROWoXr5dMBI6vkhV9QsK+cZC8Cw=; b=a3gssDg5kooycwCHesvuTSkwr6
	7eK1/j6D7EVRTAYAaVsq+x3mVk2wg9Lrireootq6otQG1Re+CrNgJSEZwe5U77Pj/dseMLaFXrhn9
	rs+L+mMxYxVPGXZUwneAaNVyemAxNwPsFVW4SRDQGdwonMTcpzkDCHf1m7a1XjXyLb27H6mxOAfZ9
	3aVpLUOFlqAa3crxpuPenv5A9Qwh9kWPo7C9Rmq8kS/1TLfccOuqoZCRzkIJr2LWzN/v34ekZjZfZ
	K8XeFkWRFsDAj9f33XLOVOdTqbAkG7XzMr7f5rMcK3Ok6N4DcgLQwPvgJ+F2+F62Zb+2GbWvFMm/a
	iOOqxw7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmZ1-0007mn-CB; Mon, 16 Dec 2019 09:21:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmYp-0007aZ-IV
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 09:21:05 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so6309226wrh.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 01:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=acm7Id7USaJtEmCQkuW6DFZ00yyoOpt5ngMKDZzxL9c=;
 b=ACingUp/4JomHLigeEHrTR77VwUuUn3sEJorJwv7hFAZDkUJkSmMWArwpTVnakrlJa
 vIUqAq8n04FcfoOmlfI7/sasSXXNnHYnnCz7KFkSzDyvQMeTKYwSyYOGHyl1QPXuSdBZ
 8R/Bo+anmOQ3xrdUUZm6Lg4psWeNmSmDfiwmPn4jkPbAFGt8UuCcS3/IiR962O3hbiyi
 YHlJ9nDHcjKPaY+nKCnOhfCH0OTAYdcTw6X2Z42wzsy5PW7o0ZjwGWpzkny0k6jJspci
 TjcfSpJh68byvYJyMBYjPdqPmzKvYPK3jPgSPWoKrmqIQ4jtNPiNa0H0nX6sVpWp5kEx
 M5LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=acm7Id7USaJtEmCQkuW6DFZ00yyoOpt5ngMKDZzxL9c=;
 b=CkKWy0f65BJgi3EMD34PEVAAn7NBn9GJ1k02eAP6n+V3TKX6Zcd7c2YeDu2d8CrkMP
 Z+IceRaDwg2NSYO7/VTU3VKzH/4Dd6FCeWw23tfUAz8sv5g7XJjmnGyKSMeo3jaz003U
 MH7f7zrz8LqgMrE9VJ+7hd818fgKu16HWz1CDRQFtgRd4cqDVP4oUEbTgeRCHO7phXdO
 4+fcGYTB7V5BzAhHceSk9DZkatADDxDEUCsAU4/QpYdfMs8pqYELXN49hA+uI2j3ndmL
 bGHyL1JEUw27BL0OjDT6BexEyIzT1uqp2N3/Uyd/ocKCIwgMy2ehAyoBWxKc0XakP9yF
 sROA==
X-Gm-Message-State: APjAAAXzXT/UbJa82TTslLnEZhj7LWE9UnOCYgjSmBT7Beio4Rhfrzk7
 W7O6/XVv7E/lkegsUNW6WXPORYw6
X-Google-Smtp-Source: APXvYqzV3cR76+zhWF5op43CVL8QXhDXO2K8hKdiF89DtxZkEXBuwwL/bLwLhiMSOXsgKNtp91jM8w==
X-Received: by 2002:adf:dfd2:: with SMTP id q18mr28794391wrn.152.1576488057699; 
 Mon, 16 Dec 2019 01:20:57 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u16sm1479927wmj.41.2019.12.16.01.20.57
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 01:20:57 -0800 (PST)
To: linux-rockchip@lists.infradead.org
References: <20191215173318.16385-1-akash@openedev.com>
Subject: Re: Re: [PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <ea6d2f0d-450c-f0ee-6150-65a6855b7546@gmail.com>
Date: Mon, 16 Dec 2019 10:20:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191215173318.16385-1-akash@openedev.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_012103_668021_442FE25A 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Akash,

See commit below.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> new file mode 100644
> index 000000000000..e5fae451c631
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts


> +
> +&emmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	mmc-hs200-1_8v;
> +	supports-sd;

> +	disable-wp;

The mmc.txt didn't explicitly say disable-wp is for SD card slot only,
but that is what it was designed for in the first place.
Remove all disable-wp from emmc or sdio controllers.

> +	non-removable;
> +	num-slots = <1>;
> +	vin-supply = <&vcc_io>;
> +	status = "okay";
> +};

> +
> +&sdmmc {
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	max-frequeency = <150000000>;
> +	supports-sd;
> +	disable-wp;
> +	num-slots = <1>;
> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;
> +	card-detect-delay = <800>;
> +	status = "okay";
> +};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
