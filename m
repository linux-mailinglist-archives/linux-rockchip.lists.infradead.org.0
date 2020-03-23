Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4AB1900F4
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 23:12:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7tsTLkytbvLA1qKdTTd6f9gmxeEtIjdNPYi8druuvc=; b=JM84+btTS79+97
	08L7mTpO+ANCCnACvbLT5RJoCp+IziRSHrbPmcRYGsBt/ML/4tJZFWScckcHY5dYneBg+9S8S4G/S
	U/VfXbyeak5nNmfbvffVR9rPFyTfoF6Ao6+pKfqK/slxqGw73ex7Sh2SOwvB9aapJX6H/yy8hXQgx
	WF/XWk5VIxQqaw6xfmRgxFvTHO1AewNRmA4+DRWLDXuehGxLx5m3xpQE4ySpEt57nmJUV3kgZ41A2
	HdEbJDVVZLBO4tQYMJjNrua9texckpgbV3+1/h5c9Kw8hLWe46Vwd/WmvdYCEtOBDTyYR80CPwVet
	qeqaCZWQruwhabw7/YvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVIn-00042i-Di; Mon, 23 Mar 2020 22:12:09 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVIV-0003kG-Lu; Mon, 23 Mar 2020 22:11:53 +0000
Received: by mail-io1-f66.google.com with SMTP id q128so16069834iof.9;
 Mon, 23 Mar 2020 15:11:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=U1+vG2jcfIWPGJPzyBp74dMfazPVWUvbyc5a9UEJny4=;
 b=RL2lwf6J216CNgOrotp8NKxEn7ekJTWmxBguL0PVF8BbUpYsG7WJlDX5S1WisNx5VR
 4T3JfkHZWpg4mtnhBgFzLaoUfGxq0RkyLYKuhjptUXkklG0WhcTcRDWDEiJutgQ2n/9o
 kxPFNy9tMxAMcxEmts4t4BBjYxCo3nV0EgXywL2C9IWL3GIuJhGeyuFszx2du/1QMCPo
 bBCtuhXMOsoGbxtcF1rVuA8RRtq/j3qqPXXs5ZB38IP8eTnpotJJDlstRJ+rykWeemF2
 37FBOrw8i/F5hINdlVBAbPNaMXjdJNFkBOocjk6Ne07ToFRXJ/LhfQjZ47E4MFT1+ceu
 g0+w==
X-Gm-Message-State: ANhLgQ0f+HCKa2Q3fI0vpHHUgApkeuOKWCBWfKXxXdSP4OXblzi0jjXI
 nrUWhBA7CWjis7PvHIjf6Q==
X-Google-Smtp-Source: ADFU+vvetfKAazjwYEUQHArdmRpyTlu8v3T8bGybvvKdNYFA44bdB5Y0qTiQGUn5qPEk9T9rFv8mPw==
X-Received: by 2002:a05:6602:2251:: with SMTP id
 o17mr10228130ioo.101.1585001510153; 
 Mon, 23 Mar 2020 15:11:50 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id l6sm5745706ilh.27.2020.03.23.15.11.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 15:11:49 -0700 (PDT)
Received: (nullmailer pid 29035 invoked by uid 1000);
 Mon, 23 Mar 2020 22:11:48 -0000
Date: Mon, 23 Mar 2020 16:11:48 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: sound: rockchip-i2s: add
 #sound-dai-cells property
Message-ID: <20200323221148.GA29003@bogus>
References: <20200311174322.23813-1-jbx6244@gmail.com>
 <20200311174322.23813-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311174322.23813-2-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_151151_734391_A74E5B0E 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org, heiko@sntech.de,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 11 Mar 2020 18:43:22 +0100, Johan Jonker wrote:
> '#sound-dai-cells' is required to properly interpret
> the list of DAI specified in the 'sound-dai' property,
> so add them to 'rockchip-i2s.yaml'
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
