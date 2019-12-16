Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F9211203D7
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 12:25:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GleFKqNg/xWqN3pxYxjLZ/FDTkWcPa+SOcJRwgIJy/c=; b=VgJkL0DUmxDhkdtpioeh5ESwQ6
	yGV92GSTEeRcmsJjdM4kU0K0xeWdEG+jBv4KXIJZ9nvacpm/q9m93Ce4xbXgFSKCos/Au2DNiPfGJ
	t6i3gaf4SfAwUEQYV0jWeYM9TLtSzOCAidVWgEPSXW2r6b4EdXGzQ6lJepQXbMgItYw6Tw/+5WqXg
	jDfOs1aitYrdHKj3wc/vhuWPMYtWM4fbD+Q2bKLAPKJnNOqOzvZuLDM3Qr9qCeyyoxXaz1xMVQgxk
	9+jAwajgLQylb7TPkhffGzzjuJp6k892IHz5dlvBfM0CXo7lJ5W/Nksao1GcdEaqK0Y3MtDN14ALj
	+FNfhZsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoVb-0001kz-M6; Mon, 16 Dec 2019 11:25:51 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoVY-0001kU-Gr
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 11:25:49 +0000
Received: by mail-wm1-x341.google.com with SMTP id u2so6273494wmc.3
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 03:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=GEGGT5ko96/I2TuaDLEg99UiZGHRq3x8qHClFxsjgeM=;
 b=rW6Tv7KHlOXlr/Ddu5Kc2Nh/VQeWz7VkYg1ABGgKpIjZjjZWvj6FLiNB+in1ZHKhGn
 F9EUrWmpnG8+6Jt5ACFO8ulSCDlgst5JiuspYGq4B4gAwc6T1esnRDpShAYhAz+Z76I5
 20UCDE6T4SN0OVyydgBOTfQLa2EKl5x8nBAW4xs2Wi4NnZIhL1W/fd3Yzeqpdk1pNiL2
 CnSBAiOPcLfwKgLYBptxldnvMH2Lt8pvkSR46sR+pYkXdVG0m465jaoKSSGJSTIUExYX
 +dllLn+On60XTtNyJ6kqtFFQwMjDO44JkTvghNgW5bbJoAzreOdOO97RdEaiPT0o0Z/h
 7DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GEGGT5ko96/I2TuaDLEg99UiZGHRq3x8qHClFxsjgeM=;
 b=ohdMaau1YsQqD6rx8Zh7VBxBJ/1bZT+Yg5k7BLeOyiV4DsSmfjVgv4xjdS+dO5ppar
 TE0CsmdARNZ4Q6/Clfsged9a+SikAbp1PwaLZlwOloFTcXX7izBvf5BazHOWWd7N8h5I
 tF1USErlo6Y5cvODuD/zHp37a22xsQzLypdZgDxednNnvBc4LJSsiG/ERounZJSfYPTp
 LLESDF8L1HxHnU/6++ee4AVexZCPDZS0aZuCXCs3XUp2znCHWiTaFL8S0iIIYvaGw88a
 HdF48sN4Ip5AxdyC81tIT9VXsFzHv5GRgOv1mUl5V7MQAHF/XcRU5ONteJ7Ea6+oS2km
 5uZw==
X-Gm-Message-State: APjAAAUCPNMSiAKU/wd2lceoq20X04lvcYqzeNb7b/sq5dVkfrEwzANR
 dp6T3DEEF05L/8EP6WFZ27qzZl+F
X-Google-Smtp-Source: APXvYqy+ntt/OBYYuMuk2BrmBZSYX0h8SAamN1Sb44/cLZ0K1ypX/FyAnJYfC4dsMlSD5QW4o8xTjw==
X-Received: by 2002:a05:600c:214f:: with SMTP id
 v15mr23689076wml.110.1576495546658; 
 Mon, 16 Dec 2019 03:25:46 -0800 (PST)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f12sm20945753wmf.28.2019.12.16.03.25.45
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 03:25:46 -0800 (PST)
Subject: Re: [PATCH] arm64: dts: rockchip: add ROCK Pi S DTS support
From: Johan Jonker <jbx6244@gmail.com>
To: linux-rockchip@lists.infradead.org
References: <20191215173318.16385-1-akash@openedev.com>
 <ea6d2f0d-450c-f0ee-6150-65a6855b7546@gmail.com>
 <31424b70-bbe1-f2ab-13ee-b1653beab049@gmail.com>
Message-ID: <c603b65d-68d9-a623-8e51-0b7206db518c@gmail.com>
Date: Mon, 16 Dec 2019 12:25:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <31424b70-bbe1-f2ab-13ee-b1653beab049@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032548_584651_FE553552 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Hi Akash,

> +&sdio {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	bus-width = <4>;
> +	max-frequency = <1000000>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	supports-sdio;

supports-sdio is not mentioned in mmc-controller.yaml

> +	keep-power-in-suspend;
> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;
> +	sd-uhs-sdr104;
> +	status = "okay";
> +};



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
