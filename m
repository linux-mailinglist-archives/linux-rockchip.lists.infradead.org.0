Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED361900F2
	for <lists+linux-rockchip@lfdr.de>; Mon, 23 Mar 2020 23:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iC5vN54JhIWTsgTP6AlpmDCd1URUTpskqmKgCTwxL+k=; b=YYYCRZNXSxGP/M
	sm6mZ8zyadRwff7ZXXPnPVxUhPI5iG3XV8qd6W7s5TqdSjmKMZ3Mi94y+o+RuaS0ho2Jmx18TpMdA
	KO+P6ZmImru8g0p/kkK5fC8nFEFoMa9Uo1kqA6rYp+zJBzQ2IQMP+VCNnp0Z8jST89ksxJFsejXPD
	s/DbiF6Hjp72vBwQoHe5f/sE5m1LijZ9SI8jSNyH4oMndKwFHLWmk54socIZazeSPskJI8PyrJpHS
	pddQVE8W+sT7AGxkzjMxrDMzQs1da+bSlVYMZqbMk6TTuvo1PAcCMWk94P/jO7QHMxflNXH0LCx8p
	WY4zymzsGxRN1ws73aMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGVIS-0003hH-RV; Mon, 23 Mar 2020 22:11:48 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGVIG-0003Xx-9q; Mon, 23 Mar 2020 22:11:37 +0000
Received: by mail-io1-f68.google.com with SMTP id q9so16120567iod.4;
 Mon, 23 Mar 2020 15:11:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CXIO1RuJbIyd33SKijqeKvFhxWfXHto+5uHWG1/sMRA=;
 b=VY60Ym1v5BJxYb4vVyX8C/wYFwgRNfE0vI7oQC92CDu97XBaaaYqXHz9gnEX2R0PUu
 3sugOy5eUK+pu+pU+N/Fw2LB4TFHUB5zi9Wftg0xjih3nskT3MOVZitRK7FT0Hb/mU7V
 h4Py8q7XBGshhBUyGMzTfkE+pN41CfrkXxdgk8Q1FAu4euRvhmi6vTpOv3Ao2u4DLYUF
 75/MGE5EIvUkO8n458a8tWpqribWB55UhdMJa+m31UBF8cmHxbndSPZtPRt+KeJbJ2hS
 frio6i9h6ByibYdAMIM/PzRfuCP5wbcWe3IrNekwls1jEHSnMMOuB5ZqcJIQIe/mRmwy
 08Yw==
X-Gm-Message-State: ANhLgQ1zcrIeHr7ZZkxVdQ9EmVpSgiqvsUoLuNXdFTofPgmDbfS/kMbg
 y1568ZfZirbwx/paUjFmCW2ax9A=
X-Google-Smtp-Source: ADFU+vuxvKf/q1ZfFJJiZuqcHHfTUME8CXHg4jNa1UZ/F14DpnV8NJR/r/bzHrCDo4Qu5Piq/XFZzg==
X-Received: by 2002:a5d:958f:: with SMTP id a15mr20875411ioo.170.1585001495416; 
 Mon, 23 Mar 2020 15:11:35 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id h9sm414079iow.37.2020.03.23.15.11.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 15:11:34 -0700 (PDT)
Received: (nullmailer pid 28519 invoked by uid 1000);
 Mon, 23 Mar 2020 22:11:33 -0000
Date: Mon, 23 Mar 2020 16:11:33 -0600
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: sound: convert rockchip i2s bindings
 to yaml
Message-ID: <20200323221133.GA28453@bogus>
References: <20200311174322.23813-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311174322.23813-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_151136_345565_076B0E3C 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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

On Wed, 11 Mar 2020 18:43:21 +0100, Johan Jonker wrote:
> Current dts files with 'i2s' nodes are manually verified.
> In order to automate this process rockchip-i2s.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  .../devicetree/bindings/sound/rockchip-i2s.txt     |  49 ----------
>  .../devicetree/bindings/sound/rockchip-i2s.yaml    | 106 +++++++++++++++++++++
>  2 files changed, 106 insertions(+), 49 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip-i2s.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
