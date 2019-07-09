Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB46063933
	for <lists+linux-rockchip@lfdr.de>; Tue,  9 Jul 2019 18:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zypOmHOv171EE2a/3lXnZc8Yv2uh3JRic4wKDCWU8Jk=; b=MMgSPN7yjDqurt
	uvBVKv+4G0x7M3vQmIBxIpS+D8ZJBCzUVSkR57lp0YKycUea/cyhPotNvKhucsiCHG5NFUIy5bMcP
	Dh2naZvZSPIeqdoVx5xcrsvkaWsfPhYcqFe4abf9xgRw51X6PdgF0ijyeybc3XhKY61ZZDr8TrjRa
	aaH9PFnLoPxZHc/IEgWVkOK1E93RwBWMWHiiNN+3so8AhPje2M+Z6oqOQjkNdcWyDyyWvU8ne6ti4
	vT0QDQfacpfrreiG1s4QsgF9vOj21BKO7WUf5wgC0dD3uFoFt6MD2DIGxdr72vPO/1rMzZo+4P9q7
	xcZB/m9o+BlIFB946S8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hksq2-0004P0-2z; Tue, 09 Jul 2019 16:19:30 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkspy-0004O8-CM
 for linux-rockchip@lists.infradead.org; Tue, 09 Jul 2019 16:19:27 +0000
Received: by mail-io1-f66.google.com with SMTP id i10so44338935iol.13
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Jul 2019 09:19:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7tAfXbTGjm8fRgQr1s7o3SHyobzROVcWesepsvUVeJ0=;
 b=JIYNjz1T1i/8dOk0sb5aavCtWgAPcnUXuz1m26nhcoWU1ZSlXS/TXYpl328BSXcJ/9
 3gOJ6iiP7q06ayilVtYUjeJzOvX2VHN/vdORnlBF3DfTPp243PqvmNEXp/oo4nPIDlt/
 KHuubMgr4lo9u+2rUW5rsmu2q8cVidQ2yoCYguVzKXQvzft9djB8jJSbBTJ7p8R6UXiC
 o9RXSB1zaTPojXdgA4iRp97NlAW+ygE53UCP4c5CAF++kAYqDg6lnruD7rGOgGocbHP4
 tGWjdBcx7hBcKDChEdL63RdHL+7u8t6c0sZ1C5EJAaf2ooVhxNwVdY5+Axindz3w5NoL
 VCug==
X-Gm-Message-State: APjAAAXASp3MsmSwc5GXp7DIyqanNNZ7YjwISbYfIiT9VeNa7/xu9XpH
 TZZuQzx0A7m+abaEoK0Zbg==
X-Google-Smtp-Source: APXvYqytUb4e1tTFkilBAmDnbfpUegwR/3+McS2ESVbZuIF2pcM4ypCPA270vJObgxVGw3SsHisGJg==
X-Received: by 2002:a05:6638:191:: with SMTP id
 a17mr24115446jaq.101.1562689163723; 
 Tue, 09 Jul 2019 09:19:23 -0700 (PDT)
Received: from localhost ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id r5sm18036660iom.42.2019.07.09.09.19.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 09:19:22 -0700 (PDT)
Date: Tue, 9 Jul 2019 10:19:22 -0600
From: Rob Herring <robh@kernel.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH v2 17/28] drivers: Introduce bus_find_device_by_of_node()
 helper
Message-ID: <20190709161922.GA1609@bogus>
References: <1560534863-15115-1-git-send-email-suzuki.poulose@arm.com>
 <1560534863-15115-18-git-send-email-suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560534863-15115-18-git-send-email-suzuki.poulose@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_091926_422965_1E06F21D 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 suzuki.poulose@arm.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 gregkh@linuxfoundation.org, rafael@kernel.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-i2c@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Wolfram Sang <wsa@the-dreams.de>, linux-rockchip@lists.infradead.org,
 Takashi Iwai <tiwai@suse.com>, linux-spi@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri, 14 Jun 2019 18:54:12 +0100, Suzuki K Poulose wrote:
> Add a wrapper to bus_find_device() to search for a device
> by the of_node pointer, reusing the generic match function.
> Also convert the existing users to make use of the new helper.
> 
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <maxime.ripard@bootlin.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: devicetree@vger.kernel.org
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Frank Rowand <frowand.list@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: linux-i2c@vger.kernel.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-spi@vger.kernel.org
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Wolfram Sang <wsa@the-dreams.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> ---
>  drivers/gpu/drm/drm_mipi_dsi.c             |  7 +------
>  drivers/hwtracing/coresight/of_coresight.c | 11 ++---------
>  drivers/i2c/i2c-core-of.c                  |  7 +------
>  drivers/nvmem/core.c                       |  7 +------
>  drivers/of/of_mdio.c                       |  8 +-------
>  drivers/of/platform.c                      |  7 +------
>  drivers/spi/spi.c                          |  9 ++-------
>  include/linux/device.h                     | 12 ++++++++++++
>  sound/soc/rockchip/rk3399_gru_sound.c      |  9 ++-------
>  9 files changed, 23 insertions(+), 54 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
