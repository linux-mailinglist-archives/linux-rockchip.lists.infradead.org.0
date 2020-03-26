Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 388661944BB
	for <lists+linux-rockchip@lfdr.de>; Thu, 26 Mar 2020 17:55:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m6l4L2RVKWf3nYrIsLhpNT3QL3dxPdGwaK0H6iwjlIs=; b=Vj7930Qu9fQ9x+
	7vuoXaH1ldFewdj0pQyJ+QoPeNwYbubg3LlALwGu9XBUovCQZGPKYRuTEK7ACqnQ7o2U14uVoUJA5
	b8QypskfgHyxUWnK7x/CrVzd2NfrG5wfqBCaESA1wDfk64BM/IHItuK8hznE9cN36s7OBwpzgbAAr
	Y6etsBkcfO3nS2DH51Mj9ZwM8TGQbt5joc5KlRMu1CijyRsEGe9LlJfZSKBZMMf8RTonicjYgHPQf
	i68CmKu+EF/yrwG6cpqL9OXYTHNvnu9h0vTKrKLUnqFPlzjjPT5jcPD4mxnk/Y+DRhr+0xCAiA04l
	+b83Fzk8oEXmf3cuOSvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVmo-0003AU-2n; Thu, 26 Mar 2020 16:55:18 +0000
Received: from mail-il1-f195.google.com ([209.85.166.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVmk-0003A9-MY
 for linux-rockchip@lists.infradead.org; Thu, 26 Mar 2020 16:55:16 +0000
Received: by mail-il1-f195.google.com with SMTP id f16so6016877ilj.9
 for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2020 09:55:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=vVdQEQ7sYzGEqjW9g4tDgsuflsduuCDMUset/5YfDPE=;
 b=egzgOwnG50GZkpL06/dbKte4qYLLl6DazmMWcmuv9G/QJoOkWKR8/eEAafYmDyLn3W
 NgZDHVtttSJjlwfRzlJibSpfpBbn2Q5kZO6CeuFh7Iq9IBNzL2hRk8kw9of8b15+Xia+
 cqlGz3uQAyATzrBA169DAjSZ4+hrzCrzPmLJAi2aEE7Xd8U6zzaSrpy7iZP+OCYvtQpb
 wDZOAcAOaKJjGkrHKIE7xK0XRlQNyQC//7E53EYBmt75Zr+wHjqwOK9PnF8QRbAy7JvR
 vHvonlMLutzoHm2mffh1pw1mpQSprUTWIgrGEZNyeZ8UEm8DwQlAmaCBEqdjbK4TpNAH
 dErg==
X-Gm-Message-State: ANhLgQ0h0cDEhG5YgdkyKlfElfzlEqonrKyMnu9dBEIB+sx+vdwMj9Zv
 azQp4Pv6pjKvUBcm1LC8PQ==
X-Google-Smtp-Source: ADFU+vsYLSSDAWb+PFaYg/iNpnKHWjxEl8YuPbb4mV1g+BY74zuyxxL1mGYiXVbV73u6V8GgemDOLQ==
X-Received: by 2002:a92:8410:: with SMTP id l16mr9701669ild.288.1585241713894; 
 Thu, 26 Mar 2020 09:55:13 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id u5sm754957ion.51.2020.03.26.09.55.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 09:55:12 -0700 (PDT)
Received: (nullmailer pid 11967 invoked by uid 1000);
 Thu, 26 Mar 2020 16:55:11 -0000
Date: Thu, 26 Mar 2020 10:55:11 -0600
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH v3 7/7] dt-bindings: rockchip-vpu: Convert bindings to
 json-schema
Message-ID: <20200326165511.GA11084@bogus>
References: <20200325213439.16509-1-ezequiel@collabora.com>
 <20200325213439.16509-8-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200325213439.16509-8-ezequiel@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095514_740756_2EEE87D3 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, Heiko Stuebner <heiko@sntech.de>,
 Alexandre Courbot <acourbot@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, Jeffrey Kardatzke <jkardatzke@chromium.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 25 Mar 2020 18:34:38 -0300, Ezequiel Garcia wrote:
> Convert Rockchip VPU (Hantro IP block) codec driver documentation to
> json-schema.
> 
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/media/rockchip-vpu.txt           | 43 ----------
>  .../bindings/media/rockchip-vpu.yaml          | 82 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 83 insertions(+), 44 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.txt
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Error: Documentation/devicetree/bindings/media/rockchip-vpu.example.dts:28.41-42 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:311: recipe for target 'Documentation/devicetree/bindings/media/rockchip-vpu.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/media/rockchip-vpu.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
Makefile:1262: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1261669

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure dt-schema is up to date:

pip3 install git+https://github.com/devicetree-org/dt-schema.git@master --upgrade

Please check and re-submit.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
