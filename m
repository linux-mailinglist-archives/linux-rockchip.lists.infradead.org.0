Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F272C182426
	for <lists+linux-rockchip@lfdr.de>; Wed, 11 Mar 2020 22:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybOdcfeyNubAcKuexEJ7cycn8ElQeKUETrWe5u+mc8Y=; b=uRrkVDk/q3F0OF
	V1vgY0Un060n62mjqEU2PZ4EcABmgFHWWGBJuXf2DU/8J80ATy3ZukjTcNNNPEJFHdF5zrPmRFV0Y
	7vOBwO0AvE1cOwvRpznCZK+l9qx9UAcKStV+xfbr0N92t8U+zueRcDpE1DbhGahCDK94CzYU/1iAn
	5m5h3u/a5B8kpKHNc1w7B/3j2NmyxukpO58lijMsMVWHHeBCwNgJvOeI1/nSjk8JoeQlRwGUwumxh
	ZZvIpz/49IxLLB5ExaguE2jBOAX8evgVTVf5fupR4w/toETXgzjB8f/3qeTxoA1oMo/8ZNl4mk39w
	BZraPAZ8qWiGV5kIkYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC9Ak-0007iA-7p; Wed, 11 Mar 2020 21:45:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC9Ag-0007fS-OW
 for linux-rockchip@lists.infradead.org; Wed, 11 Mar 2020 21:45:48 +0000
Received: by mail-wr1-x443.google.com with SMTP id a25so4703406wrd.0
 for <linux-rockchip@lists.infradead.org>; Wed, 11 Mar 2020 14:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=n7HvHKiTnPOuqemknJ105xUPY/fhPykhkmE2tki5wUw=;
 b=EICxn6Fn7AFSWWWApb9dqMF1HA9elGbNGMudsmJElLrVolmjUJKkpJAEkSDaK3gkoy
 dgJTsiVARL15UIMk+HsgvC/dtdB9NQ9x5loTMa6PnUplCqBUc8gLUd0i0FrjzjG7a/Np
 lHJJZYOUEEH8afSng01BNAy/u+zq5ZYjuSmrGKyHMovqwUD+B/aadjqBSbWvbOZe44ut
 kDSaei0FjnGc1PjMfWhCPIwFbRzdcI7C7x/wbo41nWMzHlIWqGc/x4oieFEbnAQ0NN/X
 o6ed44eOo8ngzEtNUF9miYkor1nZIGitcJqPbsS4x89oMdx1NGJlhY1nhJmfXyCS+UWG
 LmRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=n7HvHKiTnPOuqemknJ105xUPY/fhPykhkmE2tki5wUw=;
 b=kPkX36wBpb0OuJByQs9T2hKoqEuUxZ4qzKJVCJzIjari9ruD8rL0TeXvrVBEalcDcD
 CWlQiAqumD3djzfJkf5TUc2wmEJ7foIvASPEYOmbgh1rUTRbUdPaBpDLgFU8ivzZjQAX
 +mfiYSAcYvpAGVVhpJTe10QswIgGpr0aeBj7X/7Pi+rMVyeQXNSmf3MQdECLUmsl+8lX
 NIxDVsSLf9FahQ9ck3GBhapsxq2GJPZbdCBMlUJmHunrsKMHe5+oxslvFjWplDQ8fBtm
 t43MXqHs/C7K0JLQCmrkqOKQeNov6G7TD7sbOyb9O1ZZ9dOMM9mci6l1PuR4Addu7zbq
 C92w==
X-Gm-Message-State: ANhLgQ1RywK34el9qK6j3D52xF1RabfamlR/ZUZsjX/nMAaGi8QFqFJC
 /GLwp/JqdxW/YYsKemk7D+4lbQ==
X-Google-Smtp-Source: ADFU+vvaCB3U3dIhxKX4tIuvn9wPcxA11wZ/JEilVShuY982q31z6n5RZ4IMJftU0QVsHPTsWtxWpg==
X-Received: by 2002:adf:f584:: with SMTP id f4mr6798624wro.77.1583963145223;
 Wed, 11 Mar 2020 14:45:45 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w9sm34772517wrn.35.2020.03.11.14.45.43
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 14:45:44 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Heiko Stuebner <heiko@sntech.de>, khilman@kernel.org, nm@ti.com
Subject: Re: [PATCH] PM / AVS: rockchip-io: fix the supply naming for the emmc
 supply on px30
In-Reply-To: <20200121222859.4069263-1-heiko@sntech.de>
References: <20200121222859.4069263-1-heiko@sntech.de>
Date: Wed, 11 Mar 2020 14:45:41 -0700
Message-ID: <7hwo7qr2ey.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_144546_825147_219A5B00 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: heiko@sntech.de, linux-pm@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Heiko Stuebner <heiko@sntech.de> writes:

> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
>
> The supply going to the emmc/flash is named vccio6, not vccio0 and while
> the code does this correctly already, the comments and error output do not.
>
> So just change these values to the correct ones.
>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Reviewed-by: Kevin Hilman <khilman@baylibre.com>

Raafael, feel free to apply directly.

Thanks,

Kevin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
