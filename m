Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D05141870
	for <lists+linux-rockchip@lfdr.de>; Sat, 18 Jan 2020 17:37:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eoIAGKTLR1GP+cKIgPy4bcVCFMUgJiJpvjFnXHTW2BQ=; b=JA1JEfNi0iQmU83uCX4vL7A9E
	6kr+zrqCWm0wUp3Q2wV3bhWlcS+0DnWf0eriDTpQi9Ydyh/cmMlZbgnN2VHoWCiSBuaDbdRGC62WP
	p2tSHH4QA8NJbi/75N4OLsS/O5Ve7Cm+o0X/5xWudTHZbHzBHYl0Ye79zA4StwyqvvRKjU8bNuvdX
	aJGK3jchQrBhlGt8a+QZFwr6y/t/LzerBSLyDkSzZy5YT/Rk6PsD3n5/wK0Rtoo63R8Dep6B7boFS
	4opA+/1dbveJrtNsU2Koyv5vr+vaEzCbMAmESJHeVeMSOelwMpguNcauDXmxCcrGzuqg4c/S+4pFe
	7fGMzS6IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isr5U-0004AB-EL; Sat, 18 Jan 2020 16:36:40 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isr5R-00048u-GN
 for linux-rockchip@lists.infradead.org; Sat, 18 Jan 2020 16:36:38 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so10556232wmc.3
 for <linux-rockchip@lists.infradead.org>; Sat, 18 Jan 2020 08:36:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rYU4lKJZz8jrmAECEotQPYwMWUzBimgsvUxqlI2dv1k=;
 b=eMs7U+f0WTVzLTGS3JpZuOspADfN/RH4GPEaLFXau9e7PlwXVGxW/i/z6GcAEc3s/c
 2R1d9PihI4ijay5hnM+xZBEusLA3RmIlIdcxND65O7RzjJYdvlGuIDlyssCC8PoCub1u
 xzJ/yKbpRO1U0jeYkaOCYS7qrskqsb3Q34OtTXVeFsw/LZ/rdqdTR7Ju6Zj66Y0q6XoX
 9sm1jU4C+urIjrvuJQFMAnaywuBm7D7yzdrkUGFs/o9bC8kSzuMmc43EEUqsqlDf28pt
 uNofFHmFp+gDxBHlYoIZ7bYtJZ1QAkAailZFt5nlM05nGQV3T5/qyDlPwPWJF+Jk0xaz
 UL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rYU4lKJZz8jrmAECEotQPYwMWUzBimgsvUxqlI2dv1k=;
 b=N9vsvhfUbOO5AmMuBTbfnHi+MGFqa5bpq8HA8woUPJcV6Z6LwC+xh87nCSSuHvQPdK
 PT1qCD1qAM8j4WN7wtP2UrzUyng/F1B16A7TDp9Sp5KMEYkFCB2Cw5c60VUhujIewAcW
 92HX3EsV98zNdw+ENWsJBH7fVWGADMZ/w72SBBzq0vh4R7dY3uzilYlWZKzCxIoEnUvC
 h8kC17u3kf/WZSUXE6t2TlNXHCZJclbpdErflUNnx3wzNS0KLBbUv0zgXQ7bjqYGSWR9
 OLu/vr0F6I6OR89j51pvTjIhUitTD7MlcinhW5YC1v36KIxtL4yBfpYhwnoSVQqTpf6n
 hDyw==
X-Gm-Message-State: APjAAAWckZLx47l7ZT1JpneziRw+X3IZCc/GSr+zVWhgWRTbGRx0l5Ns
 DiA9301nFd8E9bjSdBsKMPQ=
X-Google-Smtp-Source: APXvYqx7Ck4c3p5eVRuk5D9QilKU9w2oGrZ1Mo95ReXz+vTsLujg+C91uSTkkkCyU6bRQGrd+OnOeA==
X-Received: by 2002:a05:600c:248:: with SMTP id
 8mr10731975wmj.175.1579365389079; 
 Sat, 18 Jan 2020 08:36:29 -0800 (PST)
Received: from [192.168.1.94] (93-41-244-45.ip84.fastwebnet.it. [93.41.244.45])
 by smtp.gmail.com with ESMTPSA id x10sm39099676wrp.58.2020.01.18.08.36.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Jan 2020 08:36:28 -0800 (PST)
Subject: Re: [PATCH 5/6] PCI: rockchip: add DesignWare based PCIe controller
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>
References: <1578986580-71974-1-git-send-email-shawn.lin@rock-chips.com>
 <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
From: Francesco Lavra <francescolavra.fl@gmail.com>
Message-ID: <0975b4e4-4bee-3f8e-5276-2bc78e6dabc0@gmail.com>
Date: Sat, 18 Jan 2020 17:36:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1578986701-72072-1-git-send-email-shawn.lin@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_083637_544661_468CE1A6 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (francescolavra.fl[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Simon Xue <xxm@rock-chips.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, William Wu <william.wu@rock-chips.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On 1/14/20 8:25 AM, Shawn Lin wrote:
> +static int rockchip_pcie_reset_control_release(struct rockchip_pcie *rockchip)
> +{
> +	struct device *dev = rockchip->pci->dev;
> +	struct property *prop;
> +	const char *name;
> +	int ret, count, i = 0;
> +
> +	count = of_property_count_strings(dev->of_node, "reset-names");
> +	if (count < 1)
> +		return -ENODEV;
> +
> +	rockchip->rsts = devm_kcalloc(dev, count,
> +				     sizeof(struct reset_bulk_data),
> +				     GFP_KERNEL);
> +	if (!rockchip->rsts)
> +		return -ENOMEM;
> +
> +	of_property_for_each_string(dev->of_node, "reset-names",
> +				    prop, name) {
> +		rockchip->rsts[i].id = name;
> +		if (!rockchip->rsts[i].id)
> +			return -ENOMEM;
> +		i++;
> +	}
> +
> +	for (i = 0; i < count; i++) {
> +		rockchip->rsts[i].rst = devm_reset_control_get_exclusive(dev,
> +						rockchip->rsts[i].id);
> +		if (IS_ERR_OR_NULL(rockchip->rsts[i].rst)) {
> +			dev_err(dev, "failed to get %s\n",
> +				rockchip->clks[i].id);
> +			return -PTR_ERR(rockchip->rsts[i].rst);

IS_ERR_OR_NULL() should be replaced with IS_ERR(), because 
devm_reset_control_get_exclusive() never returns a NULL value.
Also, in case of error you should return the value from PTR_ERR(), 
without the minus sign.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
