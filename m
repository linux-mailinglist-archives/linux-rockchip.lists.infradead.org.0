Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C9E1B5CA5
	for <lists+linux-rockchip@lfdr.de>; Thu, 23 Apr 2020 15:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFKqaKNTvZ4nFH/2gsnj4bemAZ9Tl19wAACISlrQEh4=; b=WG3R4kFbSv9VQX
	wCXemSvRiJEF4Bu/u3hbMauBu6rKq37I/QO22xcDdh1Jg0L/hEC6u505rZJtq+c3Skkrz3y/BbV30
	hYchhexJ7seqlzKA49wH+/crUsRLDmLOjZSniu89P4Uf7WORqcELE0LGVjEENkxaUFbaItIiaIhO6
	IF2ryEsQ9ZqfFQfD7RArlvw3qdiGhAOjN+Beg8nP3kf78KiM+uaSzTN30KldlZrgS3bzCTOjdLu/7
	urpjdcRBatoCOmXob+wsizMbLD5ebkZQ/lQGSc5Py2+j577q+3Drs+1Ta1fP/XdUQbpVpOKa6EEkK
	HY+HihTCeOuLv1E50DdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRbzC-0003jT-4D; Thu, 23 Apr 2020 13:33:50 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRbz6-0003gm-SP
 for linux-rockchip@lists.infradead.org; Thu, 23 Apr 2020 13:33:47 +0000
Received: by mail-wr1-x441.google.com with SMTP id x18so6877916wrq.2
 for <linux-rockchip@lists.infradead.org>; Thu, 23 Apr 2020 06:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=0Mxnr6QHfY5l0I7jQqZWYhUgYSSrzd0fZHj7N3zbutY=;
 b=VuH56kWd003boJuQQcUlw8yVQmGe1BHZSvNdF/cY7EpN4JQOs8Miy6zpbzOtbAL5TA
 tD6pAoBxupOUJE+vpfkf1o1ofVZbwDudQV3/1JM8c6ZooCk2GazIUtTqKgUbISjq4KGQ
 +AC8O0Aphrq9v23aGS4oVwBJ2mm+nhjCa0WmRNmxlppUbHMLLAIkIB9OpYx+/UoW28s5
 DtHlCvRf6TUGyU2+w6WYWSjiQYowqvbr/uRLT7lcuG1y6fsRNSc4hJr9PZiRxgE0IW4N
 eg/Sar2b2uNOVTodH/4Ic8t8kbRSYHuRzc7TaMXuX5V+SFEsZfBeeyLJdhr5SuQ3VnmG
 ZBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=0Mxnr6QHfY5l0I7jQqZWYhUgYSSrzd0fZHj7N3zbutY=;
 b=L5HconoevelRRawjQdG6N5hWeR/0C7u5o7lxg5vNuurJtRnGrfGVJtztyl771ZTyUu
 ZaaJhvAJ5zorIEQL/XYhsoJIqsEOddb9aPh28RCjJ+BhhpGoH5RdoE8ur8EP+FbCSerT
 ENmdcGMoWICqHSRl1FVFHksf4sS/UmiWMO3o1hPPS+flnWHDXhmiImH82KKkIPMOjSjl
 +IUyLi9r083OV1+3ur5Zf6rENFiHfNwoO7T8v+R2Y761vHFwYn1qtNjgq0aeBBHIYVcA
 hRNhJVAbkJxRLgq8AMKjtLyJ/3TsS73pCVPj0hpadP1r5w6ptuFGOIQYCOPqK5TzW6Vi
 0yOQ==
X-Gm-Message-State: AGi0PuaUMjqWDC+8WSF5f+Nc6vs6DoHixMbWu9SY+pjwWVvIJXrPsW6E
 Dxvfb4gXnTDdnw3lS2XgAQU=
X-Google-Smtp-Source: APiQypLpY8N4F27spciix9Sp0I6NywG1ZST5sjbgl6JI+cEYUmY2EnFBHiU/1vkTiDZA9R8SP6bOVA==
X-Received: by 2002:adf:f4cb:: with SMTP id h11mr589133wrp.191.1587648823644; 
 Thu, 23 Apr 2020 06:33:43 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v7sm12489779wmg.3.2020.04.23.06.33.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 Apr 2020 06:33:43 -0700 (PDT)
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
To: Helen Koike <helen.koike@collabora.com>, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <32115405-8a29-29ee-69e2-7c662689ecfd@gmail.com>
Date: Thu, 23 Apr 2020 15:33:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_063344_948072_6C3C7C34 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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


>   clocks:
>     items:
>       - description: ISP clock
>       - description: ISP AXI clock clock
>       - description: ISP AXI clock  wrapper clock
>       - description: ISP AHB clock clock

Too many clocks here             ^
Too many spaces here                 ^

>       - description: ISP AHB wrapper clock

We can expect 4 to 5 clocks.
With 5 clocks and a different description this layout is maybe not so handy.

As first change:

  clocks:
    maxItems: 5
    description:
      rk3399 clocks
        ISP clock
        ISP AXI clock
        ISP AXI wrapper clock
        ISP AHB clock
        ISP AHB wrapper clock

And then later:

  clocks:
    maxItems: 5
    description:
      rk3288 clocks
        ISP clock
        ISP AXI clock
        ISP AHB clock
        ISP Pixel clock
        ISP JPEG source clock
      rk3399 clocks
        ISP clock
        ISP AXI clock
        ISP AXI wrapper clock
        ISP AHB clock
        ISP AHB wrapper clock

With 4 clocks:

  clocks:
    minItems: 4
    maxItems: 5
    description:
      rk1808 clocks
      rk3288 clocks
      rk3326 clocks
      rk3368 clocks
      rk3399 clocks
[..]


> 
>   clock-names:
>     items:
>       - const: clk_isp
>       - const: aclk_isp
>       - const: aclk_isp_wrap
>       - const: hclk_isp
>       - const: hclk_isp_wrap



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
