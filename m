Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF9319C0F5
	for <lists+linux-rockchip@lfdr.de>; Thu,  2 Apr 2020 14:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNy5QoUI/aA+q/ouOG0jHf03xCWC49i4Z7pTOJLjPw8=; b=ssl+V1GTr2piBV
	EDR4ZuQ+AHhCYS1nzhlIRz/c3xUUYaMOKfQbUQYoSOuAkZXIi5nGHyPNbnrOObVKFT2J/5Wx8iUBK
	aH9FtpUIKEWOX31SfiTS5AHb29l0pO99+jFBhYkx6a4iYtfSnKJlGmxt2m4MFYri7SxKmwr0xb1vU
	YsO3H5YMa/igit/2eo1O98pWx0jcdg3dZYea6HhPzUtyKmgXsjYiDSgWS9CraqIxVrCeX84zmY+XH
	0y+/kynSjJGCZR/Yn3Xu7SGzmwCZ2mcQLyXqw04+tPadEZlTR3NrLtAmsX6ATZStwR0t3LGturM1m
	5My0nLPnNBApx/JpFRCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJymB-0000NE-LZ; Thu, 02 Apr 2020 12:16:51 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJym9-0000MV-DM
 for linux-rockchip@lists.infradead.org; Thu, 02 Apr 2020 12:16:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id 91so1982278wri.10
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Apr 2020 05:16:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9100ZMfQ3eWaJVwdNq9pSQeHCEwHDV/UJ/zuKVucMxA=;
 b=ALLV3AjWxKR07II/OzlDnRe+odhQFSFArcf8cWjQukJmd6WXsg9+vyfD8DfKX9gWMN
 o85KGRmQSCApKdFnuQRIdkmUme7sEKjqw5SXiIFrjdPkCVpclHE6AukhNWeb6yNKOhL8
 mSBvda/9k8hhDcs8hxq7Ir3tcfWNZFcNPUaqnc4VZGHD9WT/x2/UGQ7N9VjavMYukKnM
 K8ULMWCC9wgUMpVyfUQ+xkB0QzfidY2ZSgy9eCRnT7acIbLf8oyP71jF6JKhMbcYxj4Q
 HrYzq3IEOcIOy3d+DvXGwz17yj0IpLyHJbIGtAohcctCquPEvV8uOKDwrwF9JRdhOKkc
 77Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9100ZMfQ3eWaJVwdNq9pSQeHCEwHDV/UJ/zuKVucMxA=;
 b=O2HOUkrP3HRliZq+WkTcRZtrtivNsPo9pi4W8ckBkJfcpGpq5zVkiYyLwSk3DMibAL
 z4syKo1dZLWyCSuMFrJ7weVfWFpNIUA6G77/V7jnH5QYb6JdZlnXFTh/Ie1v2XhafBqK
 3o2QkMpwdIKFvbEYvlveH6i5mWrWOgwRMD5udKJ2uoztpYyLkV4Z0DZAqixs+O87wK4t
 UMkILf4ex+QF/ksAtmI0WU3F+M7lnO9+mdQKtHRwJQGXIh2MwtsDFUeiPLM0rJJcEQsY
 woNTUug2BVJUpO6ETszXURtpNwQnTT0oyXSxNzEFvuDBdSZ2Ckq46LtcMkqUgLCK/yx4
 nE0w==
X-Gm-Message-State: AGi0PuYxdYaIAmRsdN9q0XdPgYpGcX1UYdw031wPxoRy8VA8w0UkV5/R
 +wmC7jM4As/+V9wTDpnEldQ=
X-Google-Smtp-Source: APiQypKji7UWQsmE5huunWfu+sXG44AGFdjl0/jp9OPk+bxWF6qOU3UNOHuPQ1YmcSNtr/z7NyzQ1g==
X-Received: by 2002:a5d:4c48:: with SMTP id n8mr3212293wrt.414.1585829807916; 
 Thu, 02 Apr 2020 05:16:47 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id y12sm4191207wrn.55.2020.04.02.05.16.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Apr 2020 05:16:47 -0700 (PDT)
To: helen.koike@collabora.com
References: <20200402000234.226466-2-helen.koike@collabora.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: phy-rockchip-dphy-rx0: move
 rockchip dphy rx0 bindings out of staging
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <bfefe00c-5673-ddcb-4e2a-425eb4771002@gmail.com>
Date: Thu, 2 Apr 2020 14:16:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200402000234.226466-2-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_051649_457384_23E8F475 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, karthik.poduval@gmail.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

> # SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> %YAML 1.2
> ---
> $id: http://devicetree.org/schemas/phy/rockchip-mipi-dphy-rx0.yaml#
> $schema: http://devicetree.org/meta-schemas/core.yaml#
> 
> title: Rockchip SoC MIPI RX0 D-PHY Device Tree Bindings
> 
> maintainers:
>   - Helen Koike <helen.koike@collabora.com>
>   - Ezequiel Garcia <ezequiel@collabora.com>
> 
> description: |
>   The Rockchip SoC has a MIPI D-PHY bus with an RX0 entry which connects to
>   the ISP1 (Image Signal Processing unit v1.0) for CSI cameras.
> 
> properties:
>   compatible:
>     const: rockchip,rk3399-mipi-dphy-rx0
> 

>   reg:
>     maxItems: 1

If 'reg' is not used => remove it.

> 
>   clocks:
>     items:
>       - description: MIPI D-PHY ref clock
>       - description: MIPI D-PHY RX0 cfg clock
>       - description: Video in/out general register file clock
> 
>   clock-names:
>     items:
>       - const: dphy-ref
>       - const: dphy-cfg
>       - const: grf
> 
>   '#phy-cells':
>     const: 0
> 
>   power-domains:
>     description: Video in/out power domain.
>     maxItems: 1
> 
> required:
>   - compatible
>   - clocks
>   - clock-names
>   - '#phy-cells'
>   - power-domains
> 
> additionalProperties: false
> 
> examples:
>   - |
> 
>     /*
>      * MIPI D-PHY RX0 use registers in "general register files", it
>      * should be a child of the GRF.
>      *
>      * grf: syscon@ff770000 {
>      *  compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
>      *  ...
>      * };
>      */
> 
>     #include <dt-bindings/clock/rk3399-cru.h>
>     #include <dt-bindings/power/rk3399-power.h>
> 
>     mipi_dphy_rx0: mipi-dphy-rx0 {
>         compatible = "rockchip,rk3399-mipi-dphy-rx0";
>         clocks = <&cru SCLK_MIPIDPHY_REF>,
>                  <&cru SCLK_DPHY_RX0_CFG>,
>                  <&cru PCLK_VIO_GRF>;
>         clock-names = "dphy-ref", "dphy-cfg", "grf";
>         power-domains = <&power RK3399_PD_VIO>;
>         #phy-cells = <0>;
>     };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
