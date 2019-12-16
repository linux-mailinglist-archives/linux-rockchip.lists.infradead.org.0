Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A281202EB
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 11:49:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2V50JL3UzVzZGyRTpV78pSERuNbUX0iDtohH/XoaEs8=; b=XcTxI2JuGnv8EyJkXuv/wXc/6M
	n1AGy2I7XTMvHNaoBJwYcYC4lqgVvg+Qd68JxZzOL7dyHxPJ+rvRvFHdfAfAcPFzgCUXgR/CRC5//
	1jDug4b6gVSsNlP9V1nrfTuySzzFYRPIjYfzc14rzVDr84ASRyAa1gqw1TgLcscnpqqU/5rggrqT8
	+3V+s1eaRB1y7I/n2UPLo4RkSBKdM+535D0yRUpd7eUKR3+XRCmsAgJ/xjqBbxUoRnkvi15p/aRHv
	xTpxdVV3APx/6ZKmH0E7/dft+VdRCzwwhmf+CIWdYoxCAiz9hhY9ANdqH4V4OgNgUR/5B74a1ZEXI
	voy/hBlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignvx-0006cD-KA; Mon, 16 Dec 2019 10:49:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignvQ-000699-HJ
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 10:48:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id y17so6648615wrh.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 02:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=4T2Cgjt0nPB2gpGDHZzvx0C3/w5SAsG6Ckj2CbgprgU=;
 b=lGnwICUmGZ+illrnZWcvAH8jWs5aVjbcXcAlL2eXSUrO7giBZ/u9uCWLcQYvJSXPAN
 DNq7+RK1zIM2a8+HAE+XNhlcRTPBcXBZ5PXo6m76idC9TbBiRk0FJOUEBwStBzzUNyFP
 bC0JrC1+JLn/0jPv7IGHGaupS/5GevIbHVeJ4e2rG3KOs8txdZ2VJa+6/MTDDAMpFR5n
 MCDpxJn6RbkHoP1t6XNXPykcIA84wR2u1E1TyWmELrGJMr2sfQz+xEkBmCNESKnBBOpS
 wTEQVsgIZSoTJy9ErtnCBOoJ3rASNFPzVGDcKjyWykOAOz2ZDAZUwatQP/lx5lo2QEBr
 RroA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4T2Cgjt0nPB2gpGDHZzvx0C3/w5SAsG6Ckj2CbgprgU=;
 b=rqgnLgyBPXfjIeaanp8Imt4/sDViZaKgwhxiIj1QO+kL9/A6F8Fjyfev4HppPj8TLA
 TUrp/L5Pv4QIpvASTuHfZXCIdNDuvn69uan1pyvYx7OX6EYODhF4pz5OELvMEJ5Yp3GN
 yuOfPoPxBwyEq/u1Uyg2aaeIzRyHYYMoYtdR9RsbEtYqCNhH0E+TDJRZqvh40HdfNkk0
 sTo2elQEugUXlfmzJ1wqwtENnqlmL3+1hJpS9sotqHJAHlNepgmlSOL2Jx5VX8u7ywO2
 w41IAiJMzdhuC1vGGwa+xszPn3aeWbHIoGCixu+Z8UnaVw16rba7dwQjIwugkUnHDS0z
 WtKg==
X-Gm-Message-State: APjAAAWFEPRLm1FvFNEnIHsWL4BTCUmw2dVfXErYLoVeMkVNH59fHfk+
 gBch373nbP8V8rjr+Wk8SJ8CIJKo
X-Google-Smtp-Source: APXvYqw1oHGLD8FQYFWIENcDopPLrDlj53FmwcGFtfbhGKIeYjLKTpOXGx/fqZ84Vqr15jNvnym0zg==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr30885196wru.235.1576493306822; 
 Mon, 16 Dec 2019 02:48:26 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id j12sm22123018wrw.54.2019.12.16.02.48.26
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 02:48:26 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
To: linux-rockchip@lists.infradead.org
References: <20191215173318.16385-1-akash@openedev.com>
 <ea6d2f0d-450c-f0ee-6150-65a6855b7546@gmail.com>
Message-ID: <31424b70-bbe1-f2ab-13ee-b1653beab049@gmail.com>
Date: Mon, 16 Dec 2019 11:48:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <ea6d2f0d-450c-f0ee-6150-65a6855b7546@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_024828_600139_ADA522C0 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

On 12/16/19 10:20 AM, Johan Jonker wrote:
> Hi Akash,
> 
> See commit below.
> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
>> new file mode 100644
>> index 000000000000..e5fae451c631
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-S.dts
> 
> 
>> +
>> +&emmc {
>> +	bus-width = <4>;
>> +	cap-mmc-highspeed;
>> +	mmc-hs200-1_8v;
>> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

> 
>> +	disable-wp;
> 
> The mmc.txt didn't explicitly say disable-wp is for SD card slot only,
> but that is what it was designed for in the first place.
> Remove all disable-wp from emmc or sdio controllers.
> 
>> +	non-removable;
>> +	num-slots = <1>;
>> +	vin-supply = <&vcc_io>;
>> +	status = "okay";
>> +};
> 
>> +
>> +&sdmmc {
>> +	bus-width = <4>;
>> +	cap-mmc-highspeed;
>> +	cap-sd-highspeed;
>> +	max-frequeency = <150000000>;

replace max-frequeency by max-frequency

>> +	supports-sd;

supports-sd is not mentioned in mmc-controller.yaml

>> +	disable-wp;
>> +	num-slots = <1>;
>> +	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_det &sdmmc_bus4>;

>> +	card-detect-delay = <800>;

card-detect-delay is not mentioned in mmc-controller.yaml

>> +	status = "okay";
>> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
