Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CDB21987EE
	for <lists+linux-rockchip@lfdr.de>; Tue, 31 Mar 2020 01:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VoKctiiP28xxB61mmvkEHVFOdU63XHUSDQK8AD1OZ0=; b=EJfIn4rAk74/Qr
	nyJrfZ7OgX6AUjoG9EfqUwZTfoXhnTxb8Q5Nvk+lu08Pm83Lz3vdDiMGuTkp19JMpljKglW0WnKM8
	2jp4Wzn7GPcme5G0YeDwxcyl/D9M4+0TLU9cvjeu+addme9sD7XlvnIyY6UpxmDa63oPe37RVJAdz
	CZJhEj8aekpd7Y3vbTidLMDWFu6USd1mSViA7M7iEFxdeFuVBjzxAa9oyXm33cD+1IFhYS61Gj9NU
	FRsKc7wBXWjyyeGl987RjfDxMcAQQuqwACIxSfv76JwvX63rS1tteb/cFY5L43KplpDwGdw2R7vPH
	8vTaVAujYmEmDoSySRfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3fR-0001cY-9A; Mon, 30 Mar 2020 23:18:05 +0000
Received: from mail-il1-f194.google.com ([209.85.166.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3fC-0001U5-Rj; Mon, 30 Mar 2020 23:17:52 +0000
Received: by mail-il1-f194.google.com with SMTP id r5so17626532ilq.6;
 Mon, 30 Mar 2020 16:17:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BTXjifd7ocglD8FboIBeR1N5hRHtq0vpT75Dg952cWQ=;
 b=C/voeORwlTFumL2Zz4igfYRihOT3RwgCp+zOD0Cgk2qOglD9/DOpbSxAM7+8aZHRSI
 jj3GYDK4zSKuDBbn/7h3wNgg+IkfGBdGQPUveWJksXx7DSjwJZl1bB3DFQsXVv9VSDgr
 2qZvePdBRsjIbwVN+kLPHwsb3HFbu7Zn5TYwVMgwua+Ja6yREyJ6KfHGAzRiPzQMJ/qq
 K/IXVVG0r4OjnbJtkThtCvxQIzC7SK3927nV4YHQwmN5zrTptHbe+7YLMEH1cvljiZJw
 fmpe/u3VfobHqkSb/pb5Dz3PBT3wiT7juuyLzC5mzwdBSu85p90ko2W/JfRIr7oXm2rF
 62vg==
X-Gm-Message-State: ANhLgQ1uZhXoyCecV9Boh1mkWSItyzk3NlT/D6uJqVcoFkP2rje8n4Cx
 aW3FaBhP06aku4BpfdhQbfodM1o=
X-Google-Smtp-Source: ADFU+vt94dHL8ZNH73PSwCvVDGJWSHYvQZp10YVT6AUavcgqdGX/LdcbPXO/CeDpMSVuIc6hSx48Og==
X-Received: by 2002:a92:d0c7:: with SMTP id y7mr13779079ila.56.1585610269995; 
 Mon, 30 Mar 2020 16:17:49 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j1sm4600895iok.2.2020.03.30.16.17.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:17:49 -0700 (PDT)
Received: (nullmailer pid 12466 invoked by uid 1000);
 Mon, 30 Mar 2020 23:17:48 -0000
Date: Mon, 30 Mar 2020 17:17:48 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Message-ID: <20200330231748.GA10021@bogus>
References: <20200319161159.24548-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200319161159.24548-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_161750_897700_164413F9 
X-CRM114-Status: GOOD (  19.17  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 05:11:58PM +0100, Johan Jonker wrote:
> Current dts files with 'rockchip-pmu-sram' compatible nodes
> are now verified with sram.yaml, although the original
> text document still exists. Merge rockchip-pmu-sram.txt
> with sram.yaml by adding it as description with an example.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> Not tested with hardware.
> 
> Changed v2:
>   Merge with sram.yaml
> ---
>  .../devicetree/bindings/sram/rockchip-pmu-sram.txt       | 16 ----------------
>  Documentation/devicetree/bindings/sram/sram.yaml         | 13 +++++++++++++
>  2 files changed, 13 insertions(+), 16 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
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
> -	sram@ff720000 {
> -		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
> -		reg = <0xff720000 0x1000>;
> -	};
> diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
> index 7b83cc6c9..a9b1c2b74 100644
> --- a/Documentation/devicetree/bindings/sram/sram.yaml
> +++ b/Documentation/devicetree/bindings/sram/sram.yaml
> @@ -224,6 +224,19 @@ examples:
>      };
>  
>    - |
> +    // Rockchip's rk3288 SoC uses the sram of pmu to store the function of
> +    // resume from maskrom(the 1st level loader). This is a common use of
> +    // the "pmu-sram" because it keeps power even in low power states
> +    // in the system.
> +    sram@ff720000 {
> +      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";

You need to document the compatible.

> +      reg = <0xff720000 0x1000>;
> +      #address-cells = <1>;
> +      #size-cells = <1>;
> +      ranges = <0 0xff720000 0x1000>;
> +    };
> +
> +  - |
>      // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
>      // primary core (cpu0). Once the core gets powered up it checks if a magic
>      // value is set at a specific location. If it is then the BROM will jump
> -- 
> 2.11.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
