Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EFDC2A1D
	for <lists+linux-rockchip@lfdr.de>; Tue,  1 Oct 2019 00:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVWzGMx4oap0efGzANph5DtENABaHC13GYIySmm2fAg=; b=JGSdUXGpzGtB9H
	h8FrL0aTuR07d5W11G7V8vlWdZ5Jcai8MRwf6AUNIEdCZ70w7bJCVRYILx8KPVfo8YFack2a1Vz+B
	MCnPzgEQRGqdCclrOM9ospAipSWOHe2iEXFurdld/JsszSO4HePiLloZku3oVCe/APLHRFgL0IHA8
	VmT02aJpxn30zjIHiTIfM9alMErymqqo6JrktTTM1gNxhaq7xtjjfVdlqQqpGUiEbRZ4zOj0cOlUo
	mpKl39FsOlDvcyiTSMgC6YbpL0EaKR2PpdU5k//wmSNcJqkzuQS5QbjRFyaPFlg3LZAcM6MCV45V3
	mi/8jneFRdywizJ1YkMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4dN-0002a7-Np; Mon, 30 Sep 2019 22:59:13 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4cs-0002AU-Ux; Mon, 30 Sep 2019 22:58:44 +0000
Received: by mail-ot1-f65.google.com with SMTP id s22so9860138otr.6;
 Mon, 30 Sep 2019 15:58:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Zsh+LJZZ1bYwJ2NNK3krE03pjGa9uFNYkpSwzo6s75E=;
 b=FuuBGWlQkVTPLQ3k1q5/oFsYcyTzMa7wG2lgxwyviBXCJoZgybHSbe2biXJXdtFEyO
 1iVeSFYS4FWTMfVEniH9Pa8x4kTPNiriZndnntc9Kl0P2Ar0JN4OGeynaPPknQ980aTu
 URvDl0Ah242y5wPEOMkbU1IBd+gGmRBVHZvT/Hxw5wBS5bPyMhxLRNDOcOUumLVY2i4b
 Y6PksyfOXzqglM5hczVFLicVVa+cmOYi5yQ0B5pOqZdzY1U3poNYk0Ui7A09WwPRy1GR
 mBhd4hITnxIhHWGHql3qIaP+6cp0DpgAwz3K9kaOlgbmmX/3sGu83a1gyGiZo3W2tE7V
 G1wA==
X-Gm-Message-State: APjAAAUOaDMpnPMoW5AY6nNs7h/5eoOjRwEdAUoqkgXpwXkf+8CKKyUA
 UhgX7m+1rpnI8pMp9dVt60Xn2yQ=
X-Google-Smtp-Source: APXvYqwWkT9GDFmYgFBWEu1p/Bs3nmD8s9rnVMBqjB0aVwy3EoB5SB513rfznMUpF2BgtyGrnCCJBg==
X-Received: by 2002:a9d:67c3:: with SMTP id c3mr14456067otn.254.1569884321904; 
 Mon, 30 Sep 2019 15:58:41 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 38sm4493219otw.28.2019.09.30.15.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 15:58:41 -0700 (PDT)
Date: Mon, 30 Sep 2019 17:58:40 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 11/13] dt-bindings: document PX30 usb2phy General
 Register Files
Message-ID: <20190930225840.GA14866@bogus>
References: <20190917082659.25549-1-heiko@sntech.de>
 <20190917082659.25549-11-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917082659.25549-11-heiko@sntech.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_155843_009626_065CE2AA 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, 17 Sep 2019 10:26:57 +0200, Heiko Stuebner wrote:
> One of the separate General Register Files contains the registers for
> controlling the usb2phy, so add the necessary binding compatible for it.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  Documentation/devicetree/bindings/soc/rockchip/grf.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
