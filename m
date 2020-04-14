Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0392F1A88A5
	for <lists+linux-rockchip@lfdr.de>; Tue, 14 Apr 2020 20:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYd3aNo9sQ2cENODfDzsdcP3haMGbI0HtUROsqmiFc4=; b=JY8FqsceGkQtHf
	A3kklaS1epEthm4glG2fcy7PiyVYLcoaHpyOH+xthtYJW7selI5R3iaM6sobrMkB2PasJemWM2XMs
	pr2Og6w17B3zNSjKdFL+1tLuPDxVRQ1wSR+62mja5IgOkSOAgo9ryfwKEuB1E9+1gd4zJkuGL+IHQ
	xroykM+1WAkfj+lypRWB0/K04Kd2jkym2tnon4+Tii5+9b/YNFgeqBZUwCtvTV/XUr8HY1TMG8/Dd
	ucxlF+RLpFbbs3Ajmovu2Sg7EpS3+qpLuDWCZKATSDeP08gGiAfXZzpAgaThbepwAGtaOH823QKNk
	m8Y6sePhpgj3IoWyqc2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPzg-00011W-Oq; Tue, 14 Apr 2020 18:09:08 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPzd-00010a-7e
 for linux-rockchip@lists.infradead.org; Tue, 14 Apr 2020 18:09:06 +0000
Received: by mail-ot1-f65.google.com with SMTP id i22so549212otp.12
 for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2020 11:09:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=prDWIrMyWVL9le+9ZcGHN+BwfXt6qR13g2kfPV4NuLU=;
 b=LUtP7XofSTNWEmXE9goHwUiTI4Jb77lCQ5ayob41UWbz/sJitxVV8FFKE9T71hvqQ+
 wXX6wUDE4ZQKYnbOHhCVzcBmMu6PWPw+6d2AlSZVNLNN6/MBIo0lHkkle9XEpCZkTm37
 4qYakNyWgtDoxg3p4HRirIRWrkSoLUZ6wlGmmm+B01kU8nM0yBssJA8dxBnFXAXbBkhP
 D2YK9C4KHUuMnNF1cG/o63nlOUacQxvhtQzgUTCR7tWTZmiUBE2ayj8LYp+IkFhlbBFw
 Mvggecx1gJAyto4+s0k9XrH2f9W+25wOwBrpFm0ctoPkBQuag/afa+pgexs5lrnda3z3
 uLvg==
X-Gm-Message-State: AGi0PuZR9s0uyc5q/GFXVamfFyMqCKFMn4aHpiwBg8Vgo9459MTp/r91
 xqHiAAVWfb8CiYTeyDDkSA==
X-Google-Smtp-Source: APiQypIh/leoxjlevMbuXjSNGpeuUA+hc90vGxRi1bhdKnjP1LzJUetWbjZ5GD/fYFx5Zd1kLiU9jw==
X-Received: by 2002:a9d:5b4:: with SMTP id 49mr18758120otd.210.1586887739227; 
 Tue, 14 Apr 2020 11:08:59 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g12sm1060392otk.71.2020.04.14.11.08.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 11:08:58 -0700 (PDT)
Received: (nullmailer pid 829 invoked by uid 1000);
 Tue, 14 Apr 2020 18:08:57 -0000
Date: Tue, 14 Apr 2020 13:08:57 -0500
From: Rob Herring <robh@kernel.org>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 6/9] dt-bindings: media: rkisp1: move rockchip-isp1
 bindings out of staging
Message-ID: <20200414180857.GA742@bogus>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
 <20200403161538.1375908-7-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200403161538.1375908-7-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110905_271146_0096772F 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 dafna.hirschfeld@collabora.com, heiko@sntech.de, kishon@ti.com,
 linux-kernel@vger.kernel.org, karthik.poduval@gmail.com,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 hverkuil-cisco@xs4all.nl, mark.rutland@arm.com, kernel@collabora.com,
 ezequiel@collabora.com, jbx6244@gmail.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 13:15:35 -0300, Helen Koike wrote:
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

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
