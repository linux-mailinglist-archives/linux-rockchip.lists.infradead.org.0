Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A1718A8B4
	for <lists+linux-rockchip@lfdr.de>; Wed, 18 Mar 2020 23:55:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qiyQbuCd1snKg/Gk2Q02KNsKSrrQ6oa0S8Q5P6Z/EFU=; b=tJ5upkRQrHOTp1
	9M+cKbDLGWGp7eYNsA6M2+HPA3xhr6SAoZeyk7gtxACJIjVskJUoDhIJqgJJyMqOdFgpFxIOetRoO
	ACC5cYFRrysQUDLXUULjrH/4CLLSQ03tmjaNt600GkRPTnRJnywdNirpU06ZhIPZIUQciDxUyzoav
	dO4g9nX1agFVIuT4t3+OW7O4b4wejaFcW1mEP/ei8m2yrVJ0lMCAeWKGiYxzuP9lKDW6wIVNSkMwK
	MBkbgzGEgeNV/xherWkxPXMKCzlscYkFrR7ocJFX/C5J7dwQk3/Kt7cI8tsVNpVCJrD17mpdfGqKa
	F9YeVe1AIuDc9MqCo/0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEhbN-0005ka-1b; Wed, 18 Mar 2020 22:55:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEhb4-0005RM-EF; Wed, 18 Mar 2020 22:55:36 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF9052076F;
 Wed, 18 Mar 2020 22:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584572133;
 bh=uTyNAhR02/lueaTrSpsEtzvYiAwF0pB5xc/FKKpl73o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ro+4MZPj8/lr9itNf5dBH8a0rGlg1/wfIPWd62qVHcJMz5O10Y3Mue4fJROANWR2M
 d9Id+B6QYs3dyhoYst2vuOUd2TWEt+ABTNjT89wpllcLEIOsJgqknKRgSJf4HGNAhX
 +I2/h5ahnh8tO9lM4ZKnPS35fNMJ5ZBu0SkyHzks=
Received: by mail-qk1-f179.google.com with SMTP id s11so165461qks.8;
 Wed, 18 Mar 2020 15:55:32 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3ONx8REXG5dLgJVw6MvWReew4Jkl+o6oG2szDj/GSCey/9QAWj
 MeDOEIa6hxQBRWyI5nKTimm+c8PaGUaWet7lNg==
X-Google-Smtp-Source: ADFU+vvCBiYODaoYfbldWLW9rUsXW8+xYy7ob9N5BeJKkvAFoqoJHOy2oWFdT1cWnjoHpZxefKYgPbVzCXJcCqWfkKI=
X-Received: by 2002:a37:393:: with SMTP id 141mr196155qkd.393.1584572131923;
 Wed, 18 Mar 2020 15:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200317163555.18107-1-jbx6244@gmail.com>
In-Reply-To: <20200317163555.18107-1-jbx6244@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 18 Mar 2020 16:55:20 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+0M1n7M1EjnJhum9Sn30FEb3ux4agJSa1KhNwUxv4THg@mail.gmail.com>
Message-ID: <CAL_Jsq+0M1n7M1EjnJhum9Sn30FEb3ux4agJSa1KhNwUxv4THg@mail.gmail.com>
Subject: Re: [RFC PATCH 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_155534_535886_CD397AE6 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:36 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are manually verified. In order to automate this process
> rockchip-pmu-sram.txt has to be converted to yaml.
>
> A check with the command below gives for example this error:
>
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:0:
> 'rockchip,rk3288-pmu-sram' was expected
> arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml: sram@ff700000:
> compatible:
> ['mmio-sram'] is too short
>
> Fix this error by adding an extra 'mmio-sram' compatible and
> 'if then' structure to filter yaml warnings.

Seems to me you should fix the .dts file. If we adjust schemas to make
dts files pass, then what is the point of the schemas?

> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sram/
> rockchip-pmu-sram.yaml

Until recent changes in linux-next now, this is not sufficient as all
examples are not checked against all schemas.

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt | 16 --------
>  .../bindings/sram/rockchip-pmu-sram.yaml           | 46 ++++++++++++++++++++++
>  2 files changed, 46 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
>  create mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
>
> diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> deleted file mode 100644
> index 6b42fda30..000000000
> --- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
> +++ /dev/null
> @@ -1,16 +0,0 @@
> -Rockchip SRAM for pmu:
> -------------------------------
> -
> -The sram of pmu is used to store the function of resume from maskrom(the 1st
> -level loader). This is a common use of the "pmu-sram" because it keeps power
> -even in low power states in the system.
> -
> -Required node properties:
> -- compatible : should be "rockchip,rk3288-pmu-sram"
> -- reg : physical base address and the size of the registers window
> -
> -Example:
> -       sram@ff720000 {
> -               compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
> -               reg = <0xff720000 0x1000>;
> -       };
> diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
> new file mode 100644
> index 000000000..bb72e4f53
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sram/rockchip-pmu-sram.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip SRAM for pmu
> +
> +description:
> +  The sram of pmu is used to store the function of resume from maskrom(the 1st
> +  level loader). This is a common use of the "pmu-sram" because it keeps power
> +  even in low power states in the system.
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +# The extra 'mmio-sram' compatible and 'if then' structure is needed
> +# to filter yaml warnings.
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: mmio-sram
> +      - items:
> +        - const: rockchip,rk3288-pmu-sram

We've been just adding the compatibles to the common sram.yaml for the
simple cases like this.


> +        - const: mmio-sram
> +
> +  reg:
> +    maxItems: 1
> +
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: rockchip,rk3288-pmu-sram
> +
> +then:
> +  required:
> +    - compatible
> +    - reg
> +
> +examples:
> +  - |
> +    pmu_sram: sram@ff720000 {
> +      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
> +      reg = <0xff720000 0x1000>;
> +    };
> --
> 2.11.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
