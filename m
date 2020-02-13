Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A99F15CC8C
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Feb 2020 21:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJ8IHi8Zr8JMh42Is5JmrHGk2rr7NFClet6WraIunfk=; b=iSb8H3ftTif4Fd
	M2OOlxcwJhV2T0DT+rR6J74TJoGJVERojOUzmW8Y25/l+/wO+w3M1x4I4xJsKQ+0UC/FDPvCZZ+Lf
	iZfu7GNMw8yCuoQequgvcgmucvwRtju+Vg2Il83jFO6NHJx3jsHrFqngho0KY3Qm70F165IM8i+I1
	10RLkoWS8nSp+I+K/FKm2BmvmYA85FREXAnvDMqOITvTa5Q98HFSBiO8edi+hbjAJ4JmHrVexpcZ4
	mbPx+KaC2fD2OFjVJ2pUqWO3GkGp7edeLjFvyeFXsuO2Fpdj5QF1U5jtem0uCjSy9QLPOSzMCprww
	CUu1eGUlfCNAym3rdvQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LOE-0007Na-6U; Thu, 13 Feb 2020 20:47:14 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LOA-0007Mp-Dv
 for linux-rockchip@lists.infradead.org; Thu, 13 Feb 2020 20:47:11 +0000
Received: by mail-oi1-f196.google.com with SMTP id q81so7243267oig.0
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Feb 2020 12:47:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XXUb9OkK0jyVXlwIZacZ5ml8iLKHL5sOLBosp9LkOuw=;
 b=FVsQpEhaKEkSbx6/aM4deHi131ZHqYSZBE38xpJfneczHzazOpPVV1e+XiqcTpkF3/
 nBeOtezSgdPYMtUGe0ReH20eJaVMObFEdgKCbBfz+yi0Kx+QAF52mPRInBqYz0yiI55t
 M5pyUbyHwERHWDZe09X1P5ME0CMj0demytJ+EJkm/jk/w9ATle49N84iPSBma8upkPzk
 lVjl3iyf1hWfmmb4Re9MVHi9y1oW9MSx8bwk3RP/Ukg6MNB3dEVrsrpAD2gGiZPQ00hr
 /9KDSx/LFNX/CQRFt6EciAJKY0ClZ8bO9gLZlSMfVAX2PSjq8q618uGSaSlqP6lZ21J+
 WgYQ==
X-Gm-Message-State: APjAAAVPQfy0ZvZpFGtYjN+nS5O87rbSP6yrpO3LAV12ose1F5evYp/m
 SIYiOvffP3eNzWB7kKld8A==
X-Google-Smtp-Source: APXvYqwG789BSM2bdMrY7tCbnbzbFJAtUdPIv2m1lllFDCiiHnH1f41Be9ptAltKdWOERzAIjQvefQ==
X-Received: by 2002:aca:f1c6:: with SMTP id p189mr4342232oih.159.1581626829428; 
 Thu, 13 Feb 2020 12:47:09 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d131sm1168918oia.36.2020.02.13.12.47.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:47:08 -0800 (PST)
Received: (nullmailer pid 2814 invoked by uid 1000);
 Thu, 13 Feb 2020 20:47:08 -0000
Date: Thu, 13 Feb 2020 14:47:08 -0600
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
Message-ID: <20200213204708.GA2363@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574091-240890-5-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_124710_469703_97C824C3 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Jingoo Han <jingoohan1@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, William Wu <william.wu@rock-chips.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Simon Xue <xxm@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 14:08:09 +0800, Shawn Lin wrote:
> From: Simon Xue <xxm@rock-chips.com>
> 
> Signed-off-by: Simon Xue <xxm@rock-chips.com>
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../devicetree/bindings/pci/rockchip-dw-pcie.yaml  | 148 +++++++++++++++++++++
>  1 file changed, 148 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dts:24.26-27 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/pci/rockchip-dw-pcie.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1237300
Please check and re-submit.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
