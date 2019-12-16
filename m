Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC131206CE
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 14:16:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SY3q8rT+kBAE4Z8LmvblPw8zZ3liW2/rUdVvRMucYhs=; b=hh4KjH5gd9FJ5ycgAhydVTb+ZP
	lY102H6L8WbtP8EBpzAYZPR9yDxL2MWBUoUT+1AytUOA6F0GQPuB6ySTTe6s4yVhH9CKVB16/v7B5
	8rGy2MlhHrI0d1DRuImiXtjm5eEQo4HJgLtSVUnS23/RD9Au7nU42URKABxvzfkYX1egtsxHf7LZj
	vj89bp0sg2CCTLb+/GuIvDpuhq7VAgDdHTM6dClZaP8kCo6CZkHTTOCvARwAfKokmSNjNkWHtWHjg
	BKGQXejSNHAXHGWlm6vt0vYWjlilQPFMTjEVCqw3iTd691On59Z59oT/FjGyuWoLINNkiNdkWXeGz
	GepNqr/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igqEU-00054w-RP; Mon, 16 Dec 2019 13:16:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igqER-00054S-LP
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 13:16:16 +0000
Received: by mail-wr1-x444.google.com with SMTP id c14so7216704wrn.7
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 05:16:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:references:subject:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=rtHxYBMoZ31BWZLNcWTvUaPDrCDC5EqCFCn7vL3/tHo=;
 b=e4a/IZa+ZEs+1oitlD8evZyFpHPlNkp4GGknmgiUvx5VSOH2LPJEOA2ugmnU6IEeW3
 j3z7JyRHd/NHu7hSvtH6HHqbgVXUIAvECwOm+IZkDj5EcGkHXDy68oVhsk/e7YkNRFIa
 VU8u2HssPvrbpiMVvVmfSjxaARy0jZXIoOLf6YYYDosokMl5hXLccHvQLHp6t0iV/eyr
 ZNZVD9N1ruk/io7waxT1YlynFhnvT/e2uMwtpYKjlU//v1WGeViL+oA7I0buJZDecFcL
 IKfeqcjAaqOfoy3SJEPsq7ynSkqhsB2qAR47BqKvmZp1f61zH00GdGjm6d/a95gUTNM2
 3GZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rtHxYBMoZ31BWZLNcWTvUaPDrCDC5EqCFCn7vL3/tHo=;
 b=otIOUtzuruw5Jsr4o9Qj+MWIPzb262vhEgq5Q0QYvP+aFvzHErm+qr8N6cuX9/M6gL
 OQLmqiU5NRT08C5MNbuwuud+Pf+Kl/YK90q6PudvIWppt1x+HXW/3l06hjQVi4At0Yu6
 Kbjh5iCDwbieNFfcuakknIPKrWcMn13Of8yXKDHCzydakf5xUR7Vxj0HMUf8A63K1FQS
 QObKdr7JQTn7wrsIsqVNipSBPDtO+bvmv/33K3k7aRxScxGE44rbwbNc7whLTYk8O4CE
 SKFbWkxGO4M96JSp0kyhJp1asmAGYMI3mTc6IkAc/RoYckKUty5tUMDEBgzcyPPyWzvg
 o2QA==
X-Gm-Message-State: APjAAAU6xQKryt2v4W55a2XmR1xwN/mj7FxlACy6Da+HdPd41kT28x41
 uxM6Z+x6Cu3NlezLXOiyELSYgJ17
X-Google-Smtp-Source: APXvYqz2t4lfh466FSs7n2zp4bvjW3EQkhca1/pFplNhSrneIAvRBu2mACxlkOpa/OheFKqidVLk9Q==
X-Received: by 2002:adf:b648:: with SMTP id i8mr30667165wre.91.1576502172718; 
 Mon, 16 Dec 2019 05:16:12 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u22sm22594894wru.30.2019.12.16.05.16.11
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 05:16:12 -0800 (PST)
To: linux-rockchip@lists.infradead.org
References: <20191209223822.27236-8-smoch@web.de>
Subject: Re: Re: [PATCH 8/8] arm64: dts: rockchip: RockPro64: enable wifi
 module at sdio0
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <d0f22c28-4c61-3901-0b81-fd2c65879b44@gmail.com>
Date: Mon, 16 Dec 2019 14:16:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191209223822.27236-8-smoch@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_051615_702002_D4A849BC 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Soeren,

> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> index 7f4b2eba31d4..9fa92790d6e0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts

> +&sdio0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	disable-wp;

The mmc-controller.yaml didn't explicitly say disable-wp is for SD card
slot only, but that is what it was designed for in the first place.
Remove all disable-wp from emmc or sdio controllers.

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
