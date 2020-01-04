Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A321304D2
	for <lists+linux-rockchip@lfdr.de>; Sat,  4 Jan 2020 22:55:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQjEPVc57rW18helbPT8+BDHwwDd9yYBpx44oHWeXrU=; b=Sz9w8HNysTHwTT
	t5iKCTnROtLjVeXQVMlh8vr7PCxDnH/BpHp8SznytERQ38mVHQBVoH0lDJFnyIy7ImMaAnPbsTQwB
	P/WmSwD3zfhfhLRtKmTzJal2Zh/PMypH0SgYn66nqIcYN2GHizj2qJmUjm9AizkDZUKC2CAyLn6fR
	FTuu867q13EheDEMy8i41KcimosxSkMG2CG2GwG35nmoQF02XZZG72+3P0nvxF38Ua0uauyQGaZZC
	/lk6x/M0jJXozIvMhxiQOjagd+y8AFPVm4B873V7/vunLAzeun2Atj4OVdkwMLCzhEmnRDL+1pFyy
	mDxrwnCn+66zshW9T7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inrON-0005nh-EJ; Sat, 04 Jan 2020 21:55:31 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inrOK-0005n9-2Y
 for linux-rockchip@lists.infradead.org; Sat, 04 Jan 2020 21:55:29 +0000
Received: by mail-il1-f193.google.com with SMTP id c4so39430726ilo.7
 for <linux-rockchip@lists.infradead.org>; Sat, 04 Jan 2020 13:55:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K/EnumApSDmaO9XbzKzz36+u0K1L2iTuLSdvygNUnhs=;
 b=lKGS8EH5kqQsVua1Zp2E+terjYcF3A0ixyv+PpVTu2jIpIjR5KEIR9XEjTJmtCcFdl
 +hza/T60oOvf/ysDEiHG5bqkjxugz02KsEARWYufa6OWKWu/XY7qjDQl9O14ysSng4bN
 7VuCtbw0/IWPZXFQi4KEVpDkbIJJ6v1x/WlFKaFJznB+kNHwSOrpfpmlJdOK/wA35jlH
 EYOJr8o1vlnP8B2lYpVRIDAAXB0HnGfq1aNuYm8melhVxmlI+hBroKaJCtdKe0IQgDpr
 412qfWcj10K/GpBZxkFP0zhpwjD1MJBfax+ioXx16/hyEGWjy7NYCI7iphw4gZc+Hf/9
 Qi0g==
X-Gm-Message-State: APjAAAWYIv/pthrpzDmjNvcCd8BymibCtTUjuDTYP6TBzTUsm2E9T+/f
 gdbr7Q6JNEaF781Pfc+eJqc6Vpo=
X-Google-Smtp-Source: APXvYqxQkXyyKOm0rxXVYFq8dlDHUOTPRlE3TU6+oK/Shv7197WR+7JiB9o2nBdBEswgfD6WhwQ/vg==
X-Received: by 2002:a92:8309:: with SMTP id f9mr82449701ild.50.1578174926672; 
 Sat, 04 Jan 2020 13:55:26 -0800 (PST)
Received: from rob-hp-laptop ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id u80sm18891008ili.77.2020.01.04.13.55.25
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 04 Jan 2020 13:55:26 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219a3
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Sat, 04 Jan 2020 14:55:24 -0700
Date: Sat, 4 Jan 2020 14:55:24 -0700
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: mmc: remove identical phrase in
 disable-wp text
Message-ID: <20200104215524.GA28188@bogus>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191228093059.2817-1-jbx6244@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_135528_115864_996DB261 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ulf.hansson@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sat, 28 Dec 2019 10:30:58 +0100, Johan Jonker wrote:
> There are two identical phrases in the disable-wp text,
> so remove one of them.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
