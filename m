Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A99E179575
	for <lists+linux-rockchip@lfdr.de>; Wed,  4 Mar 2020 17:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=edjh1B+sFcC0C4OK9tUR40hmp4heIJTRxao7mOd/A6s=; b=IZDFy18AI2jfOv
	p4CZ8VwHs97A7eUVb80fIBOJE+XZ/Eo+OQ4ZkCPEG4/73x/BQqZSyqp4dRnn4RmTx+EwrzfHZ8ca/
	bTpv9vecDETXPvSTZQmUNjf2y2zentNs4qfUWrawiiXtxoRbksdFy9L9xzIotazt/a0LXTF3DiZpO
	L/Gvx/bGf1X4jYmGZ/rkNpLx5zUVZ/aNzAp5vcFXbgNs2k0xlJ4Ugw65bAG/sAXGwh4GHwr4qpYMv
	LoqS8KvXm5df7LsYI/6SvBsV0fiwE/goTJWP8o9FwIOCQCt6Ecj9Ht13GijOaSS2hdx5yIenKVFg5
	RP1qZlUQBdqmZN+J7Yqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Wzu-0003cH-QK; Wed, 04 Mar 2020 16:35:50 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Wzk-0003Tu-OL
 for linux-rockchip@lists.infradead.org; Wed, 04 Mar 2020 16:35:42 +0000
Received: by mail-ot1-f68.google.com with SMTP id g96so2601423otb.13
 for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2020 08:35:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h1Gvo7Uhl99kC+f2DHRk2dtpXA+8wwG3dDT0Nr8Q1sw=;
 b=ZZ92BdOuYsgrNP1ZOSldHjKNO0b2t2J1qr+P4D7dv96gv4tPdWGi3j5W2LCC1/AOT0
 B4lHuLMdY1pVBFI9+lxks2lK113z6/W0OkDfMg8BRG8zgy8uUHxRdVfE+0Wc9eA1bm2a
 SkNShDkpVMJ9gkh60w5hCMnLmE1+DjcQu2Pcc+Rr5EbX+NphMCqxBPThSjgnz35+2y/+
 ISBFkKCdN/xC+GvktfWzYMug+SGv1AOIG6N4QYgD6czc6I1m2dayvrGANwYwy+MZVijf
 uvQ6mdz+Z3pIrvGJiMJvEWFmNz6ICGIABKKrbpfhWWl/1hkY1gXARGryl4aEw2DcCg8a
 VHcA==
X-Gm-Message-State: ANhLgQ0BckUnldn1TQKrEIrBxhXwtINUAmZxefDudIxDclokBXOH7lqU
 cxhGg0Dk21b00vMYBeX8rw==
X-Google-Smtp-Source: ADFU+vvs0zKwSe7pdBbmhxfAEsM04vKmv9ZOGaPA/anuEGyMrANs8OpulogLb0VTYVxwyF6vIThI4w==
X-Received: by 2002:a9d:aa7:: with SMTP id 36mr3152106otq.52.1583339739892;
 Wed, 04 Mar 2020 08:35:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p24sm4959687oth.21.2020.03.04.08.35.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 08:35:39 -0800 (PST)
Received: (nullmailer pid 22504 invoked by uid 1000);
 Wed, 04 Mar 2020 16:35:38 -0000
Date: Wed, 4 Mar 2020 10:35:38 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3 2/3] dt-bindings: display: panel: Add binding document
 for Elida KD35T133
Message-ID: <20200304163538.GA22445@bogus>
References: <20200229151506.750242-1-heiko@sntech.de>
 <20200229151506.750242-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200229151506.750242-2-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_083540_834683_90C00E28 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 francescolavra.fl@gmail.com, robin.murphy@arm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, thierry.reding@gmail.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 29 Feb 2020 16:15:05 +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The KD35T133 is a 3.5" 320x480 DSI display used in the RK3326-based
> Odroid Go Advance handheld device.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/elida,kd35t133.yaml         | 49 +++++++++++++++++++
>  1 file changed, 49 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/elida,kd35t133.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
