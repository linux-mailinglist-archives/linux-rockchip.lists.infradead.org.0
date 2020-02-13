Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AAA815CC88
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Feb 2020 21:46:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnBW/D/S8Rpo+zVqIMgZsWD9+9Is7PFCyTUf4NJpKs0=; b=cCyaYXQlEvUhXP
	1Y7/csB4Rlgc9KI5wgLiu+ym3/OBwMN6jNTjyyw/lYFCJ6nfxdeqJnGgZ9SXito5PuCvqMpaK5AuY
	15uzuL0m8KGhTxtRfrZlMgENju7f0mtEJ5CYZWSxbTl03LT5HWr2snpMUQ+zL3k/Y8IDEQjVk2ylG
	hwfViiJvMrZNyVB8oKAJ9YAyFLqVSzMvrszIEdOZGC7iwFZaKhX669QaxOZomEgFWEUE+ok8RtuY9
	FMGyPHvvPtZDLAq9NDuj4SXkP4SYDjCshVMty1TVphS7h/XHbVF8OCme+oQAdvTA5FvDekgoB+44o
	eDpG9OSIJrJlA3rApKPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2LNs-0007Jr-Kz; Thu, 13 Feb 2020 20:46:52 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2LNp-0007JB-8k
 for linux-rockchip@lists.infradead.org; Thu, 13 Feb 2020 20:46:50 +0000
Received: by mail-ot1-f68.google.com with SMTP id g64so6926301otb.13
 for <linux-rockchip@lists.infradead.org>; Thu, 13 Feb 2020 12:46:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=psOJlEetPRDRoxsa3f+Z8M0f2xosSTP4cPy/vWR0Ruw=;
 b=d+iASJqR9HUOLvDJIcvTfsRdWJkjhYXuqK/v1gh1XUjy3CzmBiQ4iBOlc5+ztaGU5g
 EIJNhYpddFwemSkKvBZu6C8SZB17o3w7H40WbUhp519LYbbN/j1ynpfJQROxwmwtOaDE
 FfJhN7p6vpPCiA9vIK43H+QJxRmTBPTBp3maWFeU5Aobe5R+p/uw4Mq8wicSyWIsn+j1
 Gz3CpkP+0tG6Bcu/E7oKX5aptlYKe/XdPWGR9NBQZqbANw3noqN3eaFtcZdjFg7+t6XX
 vC/mw+LC3nS2ZV1eFgxnzxOO1PqlyT0wOszPurj+N+idW39a10bAMWIlG7iSM3K5xwUx
 bIvA==
X-Gm-Message-State: APjAAAXxTWpIFuSkCdj98isUI1zBv+qSlTvQghoNwak+QA97e/ntN2tw
 DDianLKsEb0qmwhBLFXAGw==
X-Google-Smtp-Source: APXvYqy3sULmd5uqt/It774SbZe5Ly/Pz/6iKyGVw2itxbD64l7g6iG5gYX82BL71oueLveaCZg7wQ==
X-Received: by 2002:a9d:784b:: with SMTP id c11mr14104655otm.246.1581626807462; 
 Thu, 13 Feb 2020 12:46:47 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p83sm1038787oia.51.2020.02.13.12.46.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:46:46 -0800 (PST)
Received: (nullmailer pid 2194 invoked by uid 1000);
 Thu, 13 Feb 2020 20:46:46 -0000
Date: Thu, 13 Feb 2020 14:46:46 -0600
From: Rob Herring <robh@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: add binding for Rockchip combo phy
 using an Innosilicon IP
Message-ID: <20200213204646.GA316@bogus>
References: <1581574091-240890-1-git-send-email-shawn.lin@rock-chips.com>
 <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1581574091-240890-2-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_124649_307372_C00FA724 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Thu, 13 Feb 2020 14:08:06 +0800, Shawn Lin wrote:
> This IP could supports USB3.0 and PCIe.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - fix yaml format
> 
>  .../bindings/phy/rockchip,inno-combophy.yaml       | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno-combophy.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
Error: Documentation/devicetree/bindings/phy/rockchip,inno-combophy.example.dts:21.28-29 syntax error
FATAL ERROR: Unable to parse input tree
scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/phy/rockchip,inno-combophy.example.dt.yaml' failed
make[1]: *** [Documentation/devicetree/bindings/phy/rockchip,inno-combophy.example.dt.yaml] Error 1
Makefile:1263: recipe for target 'dt_binding_check' failed
make: *** [dt_binding_check] Error 2

See https://patchwork.ozlabs.org/patch/1237296
Please check and re-submit.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
