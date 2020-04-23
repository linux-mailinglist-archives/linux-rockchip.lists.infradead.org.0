Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8AC1B5B8F
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 14:37:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWByBHrrZxoOi6Lnj4YCiG0a6bHC07JMcQbVi60Tr44=; b=poYZ81zMybQ5/8
	4HwhBUv2l8beCdJHUMmo9Qsx/sLkhpYJDfBI/jFvJzjz/flk5hf5eFDZvkbn6zyg2REmeDasIypjc
	RuD3f6NkkKVrBfII51TKkDNeWGgQVAviIYc9RkvAgCqYvZVSzbgtFaQ0GBMeI+LZjhNTjhe5w+Ozq
	p8u1gbaZL3Iu3/sJvHwxFxfEI4qYq3l+q3XD2AeeB84l/SkEgRzaR20sUIvG/2dA20W2ad/GMaC+L
	Ezle/bw96lsz2WP//f99ZV5D0cvYWQ8R9hFcfZr/wTSW/c59hxNcGyXipHME1Cv2ixNQe3HxBSkyX
	dIPfYaJVxm4BUF7pQRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRb6A-0002bX-WA; Thu, 23 Apr 2020 12:36:58 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRb67-0002Zh-4t
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 12:36:56 +0000
Received: by mail-wm1-x341.google.com with SMTP id u127so6378859wmg.1
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 05:36:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=mi3rnUMPvy/QR3Ps6vsxVuv41qLYHh/uNXwCdOf964o=;
 b=PgsVLVg2fEE4UgEw5ybsRRcMm8D0szEHNj4jYCN/y3Piw4K0Zvmgpeth5Hjb8gCVI0
 Y2HAif5w2DxAfImAwIjZYnbyP7fEaBREjKHo0lML6cKH1VCtmlwGLGXxHftgpxo7RyJk
 5ta54tkpyf8ALl3fGhh7E3u2HGxUH2dYnvxhZ8FMENxzdzOtQmlhJPnxAadF68Z+W+uf
 V2We74ZXkgSjQP/TIAUvhG6NnMiAjbgwaE6w/Kt2o6aFnsYbbqeZjmXF+ac+tinjBO/U
 p6YlOnEegbdG2PF+zK/S49wjLppEutcfSgHcBipTrQvS9xAjVt25l7orY3r29/DAPQFs
 eEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mi3rnUMPvy/QR3Ps6vsxVuv41qLYHh/uNXwCdOf964o=;
 b=U396i3gDH8+kGaKTiq++jjqXw9n+QTB0SfA2z2H1Ny3DDZHSsD1FiC1gUIhAPtm3jW
 WRHjyJ6L2IwKAGZs/6qfBJz3udC+kOLrCaILk/ir+RflkK4knY8UKKLZqYvUXTy5YxqE
 7dwtP41KKc1V37AOBuzg3tyk3Rgdww+ouFUO8/0Rgr5PKvcvkvpHyok/RKFyPwGDSgc9
 5zU0KK0YSC70fx2nxTnHapixz8GdCoJGtRqPR2/l01gLTIDdhnJVH7JgbkawMYIshCBr
 nMbzWWAL5xra1Mpenr2jkHcv9iq5ewy0W4DomXoIm2RlyiW/+3G8ArAe30N8D1CQS91R
 NirQ==
X-Gm-Message-State: AGi0Pua/g7qk+p26CHffbQhI0j5n8QGYUvng42OtYKDckGyQf3Y9r9ii
 ipIL/e0YrGPRDmbR1t15Q+uRnWLE
X-Google-Smtp-Source: APiQypLOTc7Zk2kFUmf/qLTme2iOBIANPeVm3oJWV5ReTH48bHyBCwfMNIZwZ1IBZDmEt730DGE/4A==
X-Received: by 2002:a05:600c:2316:: with SMTP id
 22mr3898972wmo.164.1587645412306; 
 Thu, 23 Apr 2020 05:36:52 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 68sm3672991wrm.65.2020.04.23.05.36.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 05:36:51 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7da8fb4d-018e-894a-884b-760eaf2959e6@gmail.com>
Date: Thu, 23 Apr 2020 14:36:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_053655_212577_F5BF0F81 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, mark.rutland@arm.com,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Helen,

make ARCH=arm dt_binding_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema-examples.yaml
  SCHEMA  Documentation/devicetree/bindings/processed-schema.yaml
  CHKDT   Documentation/devicetree/bindings/media/rockchip-isp1.yaml
  DTC
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml
Documentation/devicetree/bindings/media/rockchip-isp1.example.dts:22.27-99.11:
Warning (unit_address_vs_reg): /example-0/parent@0: node has a unit
name, but no reg or ranges property
  CHECK
Documentation/devicetree/bindings/media/rockchip-isp1.example.dt.yaml

On 4/3/20 6:15 PM, Helen Koike wrote:
> Move rkisp1 bindings to Documentation/devicetree/bindings/media
> 
> Verified with:
> make ARCH=arm64 dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> ---
> 
> V2:
> - no changes
> 
>  .../devicetree/bindings/media/rockchip-isp1.yaml                  | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename {drivers/staging/media/rkisp1/Documentation => Documentation}/devicetree/bindings/media/rockchip-isp1.yaml (100%)
> 
> diff --git a/drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> similarity index 100%
> rename from drivers/staging/media/rkisp1/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> rename to Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
